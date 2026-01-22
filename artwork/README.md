# Bildgenerering för "Mönster av mening"

## Översikt

Denna mapp innehåller prompter för att generera bokomslag och kapitelillustrationer.

## Filer

### Bokomslag (välj en)

| Fil | Stil | Beskrivning |
|-----|------|-------------|
| `cover-prompt-1-transformation.txt` | Transformation | Delad komposition, maskin → människa |
| `cover-prompt-2-bridge.txt` | Bro | Ljusbro mellan två världar |
| `cover-prompt-3-minimalist.txt` | Minimalist | Överlappande cirklar, skandinavisk design |

### Kapitelillustrationer

| Fil | Kapitel | Nyckelmetafor |
|-----|---------|---------------|
| `chapter-01-context-window.txt` | Arbetsminnet | Skrivbord med fallande papper |
| `chapter-02-tokens.txt` | Lego för språk | Barn bygger ord med Lego |
| `chapter-03-temperature.txt` | Risktagaren | Frukostbuffé – croissant vs exotiskt |
| `chapter-04-hallucination.txt` | Falska minnen | Mormor med drömminnen |
| `chapter-05-attention.txt` | Fokusmaskin | Bok med lysande trådar mellan ord |
| `chapter-06-embeddings.txt` | Tankens landskap | Mentalt landskap med ord som platser |
| `chapter-07-training-weights.txt` | Uppväxt | Barn lär sig cykla (multiexponering) |
| `chapter-08-fine-tuning.txt` | Specialisten | Läkare blir hjärtkirurg |
| `chapter-09-prompt.txt` | Den nya assistenten | Person ger instruktioner |
| `chapter-10-rag.txt` | Bibliotekarien | Bibliotekarie slår upp i böcker |
| `chapter-11-transformer.txt` | Rundabordssamtalet | Konferensbord med alla-till-alla-kopplingar |
| `chapter-12-inference.txt` | Tentadagen | Student skriver prov med fryst kunskap |
| `chapter-13-latent-space.txt` | Ordlös förståelse | Drömlandskap med flytande former |
| `chapter-14-overfitting.txt` | Tentaplugget | Student med memorerade svar möter ny fråga |

## Rekommenderade verktyg

Prompterna är optimerade för:

1. **Midjourney** (v6) – Bäst för painterly/artistisk stil
2. **DALL-E 3** – Bra för konceptuella bilder
3. **Leonardo.ai** – Bra kontroll över stil
4. **Ideogram** – Bra för minimalistisk design

## Användning

### Steg 1: Generera bilder

1. Öppna din valda bildgenerator
2. Kopiera prompten från relevant `.txt`-fil
3. Generera 4+ varianter
4. Välj den bästa

### Steg 2: Efterbearbetning

- **Format**: Kapitelbilder bör vara 1:1 (square), omslag 2:3 (portrait)
- **Upplösning**: Minst 2000px för tryck, 1200px för webb
- **Filformat**: PNG för kvalitet, JPG för webb

### Steg 3: Placera filer

Spara genererade bilder i:

```
assets/images/
├── cover.jpg           # Bokomslag
├── chapter-01.jpg      # Kapitel 1
├── chapter-02.jpg      # Kapitel 2
├── ...
├── chapter-08.jpg      # Kapitel 8
├── chapter-09.jpg      # Kapitel 9
├── chapter-10.jpg      # Kapitel 10
├── chapter-11.jpg      # Kapitel 11
├── chapter-12.jpg      # Kapitel 12
├── chapter-13.jpg      # Kapitel 13
└── chapter-14.jpg      # Kapitel 14
```

## Stilguide

Alla bilder bör ha:

- **Färgpalett**: Varma jordtoner + elektriskt blått som accent
- **Stil**: Painterly/watercolor, ej fotorealistiskt
- **Mood**: Kontemplativ, intellektuell, varm
- **Ingen text**: Titel läggs till separat

## Anpassning

Du får gärna justera prompterna. Viktiga element att behålla:

1. Den centrala metaforen från kapitlet
2. "No text in image" för att undvika artefakter
3. Formatangivelse (square/vertical)
4. Stilangivelser för konsistens

## Tips

- Generera flera varianter och välj
- Upscale den valda bilden för bättre kvalitet
- Kontrollera att bilden fungerar både i färg och svartvitt (för PDF)
- Testa bilden i liten storlek (fungerar den som thumbnail?)
