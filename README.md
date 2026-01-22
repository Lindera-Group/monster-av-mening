# Mönster av mening

*– det artificiella sinnet speglat i vårt*

## Om Boken

Denna bok förklarar AI-koncept genom att översätta dem till vardagliga mänskliga upplevelser. Istället för teknisk jargong använder vi analogier som läsaren känner igen från sitt eget liv.

Målet är att du som läsare ska kunna säga: *"Aha, så DET är vad en LLM gör – precis som när jag..."*

Läs mer på [bokens landningssida](https://lindera-group.github.io/monster-av-mening/).

## Läs boken

- [HTML-version](https://lindera-group.github.io/monster-av-mening/monster-av-mening.html) – för webben
- [ePUB-version](https://lindera-group.github.io/monster-av-mening/monster-av-mening.epub) – för läsplattor
- [PDF-version](https://lindera-group.github.io/monster-av-mening/monster-av-mening.pdf) – för utskrift

### Målgrupp

Bildade läsare utan teknisk bakgrund som vill förstå hur modern AI fungerar – utan att behöva lära sig programmering eller matematik.

### Ton och Stil

- Varm och nyfiken, aldrig nedlåtande
- Vardagliga exempel och situationer
- Ärlig om analogiernas begränsningar
- Teknisk korrekthet utan teknisk jargong

## Kapitelöversikt

| # | Kapitel | AI-Koncept | Mänsklig Analogi |
|---|---------|------------|------------------|
| 1 | [Arbetsminnet](chapters/01-context-window.md) | Context Window | Arbetsminne, mötet där du tappar tråden |
| 2 | [Lego för språk](chapters/02-tokens.md) | Tokens | Lego-bitar, stavelser |
| 3 | [Risktagaren](chapters/03-temperature.md) | Temperature | Riskvillighet vid val |
| 4 | [Falska minnen](chapters/04-hallucination.md) | Hallucination | Konfabulering, neurologiska falska minnen |
| 5 | [Fokusmaskin](chapters/05-attention.md) | Attention | Automatiska associationer |
| 6 | [Tankens landskap](chapters/06-embeddings.md) | Embeddings | Mental karta, associationsnätverk |
| 7 | [Från nybörjare till expert](chapters/07-training-weights.md) | Training & Weights | Uppväxt, muskelminne |
| 8 | [Specialisten](chapters/08-fine-tuning.md) | Fine-tuning | Specialistutbildning |
| 9 | [Den nya assistenten](chapters/09-prompt.md) | Prompt | Instruktioner till ny medarbetare |
| 10 | [Bibliotekarien](chapters/10-rag.md) | RAG | Slå upp innan man svarar |
| 11 | [Rundabordssamtalet](chapters/11-transformer.md) | Transformer | Alla hör alla samtidigt |
| 12 | [Tentadagen](chapters/12-inference.md) | Inference | Tillämpa fryst kunskap |
| 13 | [Ordlös förståelse](chapters/13-latent-space.md) | Latent Space | Känslan innan orden |
| 14 | [Tentaplugget](chapters/14-overfitting.md) | Overfitting | Memorera utan förståelse |

Se [ordlistan](glossary/INDEX.md) för fullständig lista med detaljerade förklaringar.

## Projektstruktur

```
ai-human-translator/
├── chapters/           # Kapitel (markdown)
│   ├── 01-context-window.md
│   ├── 02-tokens.md
│   ├── 03-temperature.md
│   ├── 04-hallucination.md
│   ├── 05-attention.md
│   ├── 06-embeddings.md
│   ├── 07-training-weights.md
│   ├── 08-fine-tuning.md
│   ├── 09-prompt.md
│   ├── 10-rag.md
│   ├── 11-transformer.md
│   ├── 12-inference.md
│   ├── 13-latent-space.md
│   └── 14-overfitting.md
├── research/           # Bakgrundsmaterial
│   ├── context-window.md
│   ├── token.md
│   ├── temperature.md
│   ├── hallucination.md
│   ├── attention.md
│   ├── embeddings.md
│   ├── training-weights.md
│   ├── fine-tuning.md
│   ├── prompt.md
│   ├── rag.md
│   ├── transformer.md
│   ├── inference.md
│   ├── latent-space.md
│   └── overfitting.md
├── glossary/           # Ordlista
│   └── INDEX.md
├── assets/             # CSS och bilder
│   ├── css/
│   └── images/
├── build/              # Byggskript
├── dist/               # Genererade filer (HTML, ePUB, PDF)
├── docs/               # GitHub Pages webbplats
├── artwork/            # Bildprompter
└── .claude/            # Agentdefinitioner
    ├── agents/
    └── commands/
```

## Kapitelstruktur

Varje kapitel följer samma mönster:

1. **Öppning**: En relaterbar mänsklig situation
2. **Bryggan**: "På samma sätt fungerar [AI-koncept]..."
3. **Fördjupning**: Tekniska detaljer genom analogin
4. **Begränsningar**: Var analogin brister
5. **Varför det spelar roll**: Praktiska konsekvenser
6. **Sammanfattning**: Koncept + motsvarighet + nyckelinsikt

## Arbetsflöde

Boken skapas med hjälp av specialiserade AI-agenter:

| Agent | Uppgift |
|-------|---------|
| `researcher` | Utforskar AI-koncept på djupet |
| `translator` | Hittar träffande mänskliga analogier |
| `writer` | Skriver engagerande kapiteltext |
| `editor` | Granskar och förfinar språk |
| `fact-checker` | Verifierar teknisk korrekthet |

### Processen

1. **Research**: Djupgående utforskning av AI-konceptet
2. **Översättning**: Identifiera mänskliga motsvarigheter
3. **Skrivande**: Skapa kapitel som följer strukturen
4. **Granskning**: Editor och fact-checker säkerställer kvalitet

## Bygg boken

```bash
# Bygg alla format
bash build/build.sh all

# Eller enskilda format
bash build/build.sh html
bash build/build.sh epub
bash build/build.sh pdf
```

Kräver: [Pandoc](https://pandoc.org/), XeLaTeX (för PDF)

## Framtida Kapitel

Potentiella ämnen för framtida upplagor:

- **Batch** → Inlärningsgrupp
- **Epoch** → Repetitionscykel
- **Gradient Descent** → Korrigering nedför kullen
- **Regularization** → Självdisciplin
- **Dropout** → Träna utan stödhjul

## Bidra

Boken är ett pågående projekt. Förslag på:
- Bättre analogier
- Nya AI-koncept att täcka
- Korrigeringar av faktafel
- Språkliga förbättringar

...är välkomna via GitHub issues.

## Licens

[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) – Martin Linderå Nordström

**Författare:** Claude Opus 4.5, Anthropic<br />
**Projektledare:** Martin Linderå Nordström<br />
**Ett projekt av:** Linderå Group AB, 2026
