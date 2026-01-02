#!/bin/bash

# ============================================
# Mönster av mening - Build Script
# ============================================
#
# Generates PDF, HTML, ePUB and Markdown bundle
# Requires: pandoc, xelatex (for PDF)
#
# Usage: ./build.sh [format]
#   ./build.sh          - Build all formats
#   ./build.sh pdf      - Build PDF only
#   ./build.sh html     - Build HTML only
#   ./build.sh epub     - Build ePUB only
#   ./build.sh markdown - Build Markdown bundle
#   ./build.sh website  - Build website (docs/)
#
# ============================================

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Directories
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
DIST_DIR="$ROOT_DIR/dist"
DOCS_DIR="$ROOT_DIR/docs"
CHAPTERS_DIR="$ROOT_DIR/chapters"
ASSETS_DIR="$ROOT_DIR/assets"

# Book metadata
TITLE="Mönster av mening"
SUBTITLE="det artificiella sinnet speglat i vårt"
AUTHOR="Claude (Opus 4.5)"
PUBLISHER="Linderå Group AB"
YEAR="2026"
LANG="sv"

# Chapter order
CHAPTERS=(
  "$ROOT_DIR/TITLE-PAGE.md"
  "$ROOT_DIR/FOREWORD.md"
  "$CHAPTERS_DIR/01-context-window.md"
  "$CHAPTERS_DIR/02-tokens.md"
  "$CHAPTERS_DIR/03-temperature.md"
  "$CHAPTERS_DIR/04-hallucination.md"
  "$CHAPTERS_DIR/05-attention.md"
  "$CHAPTERS_DIR/06-embeddings.md"
  "$CHAPTERS_DIR/07-training-weights.md"
  "$CHAPTERS_DIR/08-fine-tuning.md"
  "$ROOT_DIR/glossary/INDEX.md"
  "$ROOT_DIR/COLOPHON.md"
)

# ============================================
# Helper Functions
# ============================================

log_info() {
  echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
  echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}

check_dependency() {
  if ! command -v $1 &> /dev/null; then
    log_error "$1 is not installed"
    return 1
  fi
  return 0
}

ensure_dist_dir() {
  mkdir -p "$DIST_DIR"
}

# ============================================
# Build Functions
# ============================================

build_pdf() {
  log_info "Building PDF..."

  if ! check_dependency pandoc; then
    log_error "pandoc required for PDF generation"
    return 1
  fi

  ensure_dist_dir

  # Try xelatex first (best quality), then weasyprint, then wkhtmltopdf
  if command -v xelatex &> /dev/null; then
    PDF_ENGINE="xelatex"
    PDF_OPTS="--variable geometry:margin=1in --variable fontsize=11pt --variable mainfont='Crimson Pro' --variable monofont='JetBrains Mono'"
  elif command -v weasyprint &> /dev/null; then
    PDF_ENGINE="weasyprint"
    PDF_OPTS=""
  elif command -v wkhtmltopdf &> /dev/null; then
    PDF_ENGINE="wkhtmltopdf"
    PDF_OPTS=""
  else
    log_error "No PDF engine found. Install one of: xelatex (brew install --cask mactex), weasyprint (pip install weasyprint), wkhtmltopdf (brew install wkhtmltopdf)"
    return 1
  fi

  log_info "Using PDF engine: $PDF_ENGINE"

  cd "$ROOT_DIR"

  pandoc "${CHAPTERS[@]}" \
    --from markdown \
    --to pdf \
    --pdf-engine=$PDF_ENGINE \
    $PDF_OPTS \
    --variable lang=$LANG \
    --variable title="$TITLE" \
    --variable subtitle="$SUBTITLE" \
    --variable author="$AUTHOR" \
    --resource-path="$ROOT_DIR:$ASSETS_DIR" \
    --toc \
    --toc-depth=2 \
    --output "$DIST_DIR/monster-av-mening.pdf"

  log_info "PDF created: $DIST_DIR/monster-av-mening.pdf"
}

build_html() {
  log_info "Building HTML..."

  if ! check_dependency pandoc; then
    log_error "pandoc required for HTML generation"
    return 1
  fi

  ensure_dist_dir

  pandoc "${CHAPTERS[@]}" \
    --from markdown \
    --to html5 \
    --standalone \
    --css="../assets/css/book.css" \
    --variable lang=$LANG \
    --variable title="$TITLE" \
    --metadata title="$TITLE - $SUBTITLE" \
    --toc \
    --toc-depth=2 \
    --output "$DIST_DIR/monster-av-mening.html"

  log_info "HTML created: $DIST_DIR/monster-av-mening.html"
}

build_epub() {
  log_info "Building ePUB..."

  if ! check_dependency pandoc; then
    log_error "pandoc required for ePUB generation"
    return 1
  fi

  ensure_dist_dir

  # Build from root directory so relative image paths resolve correctly
  cd "$ROOT_DIR"

  pandoc "${CHAPTERS[@]}" \
    --from markdown \
    --to epub3 \
    --css="$ASSETS_DIR/css/book.css" \
    --epub-metadata="$ROOT_DIR/build/epub-metadata.xml" \
    --resource-path="$ROOT_DIR:$ASSETS_DIR" \
    --toc \
    --toc-depth=2 \
    --output "$DIST_DIR/monster-av-mening.epub"

  log_info "ePUB created: $DIST_DIR/monster-av-mening.epub"
}

build_markdown() {
  log_info "Building Markdown bundle..."

  ensure_dist_dir

  # Concatenate all chapters into single markdown file
  cat "${CHAPTERS[@]}" > "$DIST_DIR/monster-av-mening.md"

  log_info "Markdown bundle created: $DIST_DIR/monster-av-mening.md"
}

build_website() {
  log_info "Building website for GitHub Pages..."

  mkdir -p "$DOCS_DIR"

  # Copy CSS
  mkdir -p "$DOCS_DIR/css"
  cp "$ASSETS_DIR/css/book.css" "$DOCS_DIR/css/"

  # Copy images if they exist
  if [ -d "$ASSETS_DIR/images" ] && [ "$(ls -A $ASSETS_DIR/images)" ]; then
    mkdir -p "$DOCS_DIR/images"
    cp -r "$ASSETS_DIR/images/"* "$DOCS_DIR/images/"
  fi

  # Generate individual chapter pages
  for chapter in "${CHAPTERS[@]}"; do
    filename=$(basename "$chapter" .md)

    pandoc "$chapter" \
      --from markdown \
      --to html5 \
      --standalone \
      --css="css/book.css" \
      --variable lang=$LANG \
      --template="$ROOT_DIR/build/chapter-template.html" \
      --output "$DOCS_DIR/$filename.html" 2>/dev/null || \
    pandoc "$chapter" \
      --from markdown \
      --to html5 \
      --standalone \
      --css="css/book.css" \
      --variable lang=$LANG \
      --output "$DOCS_DIR/$filename.html"
  done

  log_info "Website built in: $DOCS_DIR/"
}

build_all() {
  log_info "Building all formats..."
  build_markdown
  build_html
  build_epub
  build_pdf
  build_website
  log_info "All formats built successfully!"
}

# ============================================
# Main
# ============================================

case "${1:-all}" in
  pdf)
    build_pdf
    ;;
  html)
    build_html
    ;;
  epub)
    build_epub
    ;;
  markdown)
    build_markdown
    ;;
  website)
    build_website
    ;;
  all)
    build_all
    ;;
  *)
    echo "Usage: $0 [pdf|html|epub|markdown|website|all]"
    exit 1
    ;;
esac
