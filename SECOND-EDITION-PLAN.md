# Plan för Andra Upplagan

## Översikt

Andra upplagan utökar boken med 6 nya kapitel baserat på de koncept som listades som "Framtida Kapitel" i första upplagan.

## Nya Kapitel (9–14)

| # | Filnamn | AI-Koncept | Föreslagen Mänsklig Analogi |
|---|---------|------------|------------------------------|
| 9 | `09-prompt.md` | Prompt | Frågeställning / konsten att ställa bra frågor |
| 10 | `10-rag.md` | RAG (Retrieval-Augmented Generation) | Att slå upp innan man svarar / bibliotekarie |
| 11 | `11-transformer.md` | Transformer | Kontextmedveten tänkare / simultantolk |
| 12 | `12-inference.md` | Inference | Tänkande / resonemang |
| 13 | `13-latent-space.md` | Latent Space | Det undermedvetna / drömmar |
| 14 | `14-overfitting.md` | Overfitting | Fixering / övertänkande / plugga till provet |

## Arbetsflöde per Kapitel

Samma process som första upplagan:

### Fas 1: Research
```
/new-concept <koncept>
```
Använd `researcher`-agenten för att skapa `research/<koncept>.md` med:
- Teknisk definition
- Hur det fungerar
- Praktisk användning
- Vanliga missförstånd
- Nyckelinsikter för översättning
- Källor

### Fas 2: Översättning
Använd `translator`-agenten för att identifiera bästa mänskliga analogi.

### Fas 3: Skrivande
```
/write-chapter
```
Använd `writer`-agenten för att skapa kapitlet enligt strukturen:
1. Öppning (relaterbar mänsklig situation)
2. Bryggan ("På samma sätt fungerar...")
3. Fördjupning (tekniska detaljer genom analogin)
4. Begränsningar (var analogin brister)
5. Varför det spelar roll
6. Sammanfattning

### Fas 4: Granskning
```
/review
```
Använd `editor` + `fact-checker`.

## Kapitelbilder

### Bildprompter att skapa

Skapa nya promptfiler i `artwork/`:

| Fil | Kapitel | Nyckelmetafor (förslag) |
|-----|---------|-------------------------|
| `chapter-09-prompt.txt` | Prompt | Person som formulerar en fråga / dirigent |
| `chapter-10-rag.txt` | RAG | Bibliotekarie som slår upp i böcker |
| `chapter-11-transformer.txt` | Transformer | Simultantolk med papper |
| `chapter-12-inference.txt` | Inference | Schackspelare som tänker |
| `chapter-13-latent-space.txt` | Latent Space | Drömlandskap / undermedvetet rum |
| `chapter-14-overfitting.txt` | Overfitting | Student som memerat svar utan förståelse |

### Process för bildgenerering (ChatGPT)

**Steg 1**: Skapa prompt baserat på befintligt mönster:

```
Chapter X: [AI-koncept] / [Svensk titel]

[Beskrivning av scen, ~100 ord]. Warm amber and brown tones, soft shadows.
Metaphor for [koncept]. Painterly illustration style, subtle texture,
contemplative mood. No text. Square format for chapter opening.
```

**Steg 2**: I ChatGPT (DALL-E 3):
1. Klistra in prompten
2. Generera 2-4 varianter
3. Be om justeringar vid behov
4. Ladda ner bästa versionen

**Steg 3**: Efterbearbetning:
- Beskär till 1:1 (square)
- Minst 1200px för webb
- Spara som `chapter-XX.jpg` i `assets/images/`

## Filuppdateringar

### Nya filer att skapa

```
research/
├── prompt.md
├── rag.md
├── transformer.md
├── inference.md
├── latent-space.md
└── overfitting.md

chapters/
├── 09-prompt.md
├── 10-rag.md
├── 11-transformer.md
├── 12-inference.md
├── 13-latent-space.md
└── 14-overfitting.md

artwork/
├── chapter-09-prompt.txt
├── chapter-10-rag.txt
├── chapter-11-transformer.txt
├── chapter-12-inference.txt
├── chapter-13-latent-space.txt
└── chapter-14-overfitting.txt

assets/images/
├── chapter-09.jpg
├── chapter-10.jpg
├── chapter-11.jpg
├── chapter-12.jpg
├── chapter-13.jpg
└── chapter-14.jpg
```

### Filer att uppdatera

1. **README.md** – Lägg till kapitel 9–14 i tabellen
2. **glossary/INDEX.md** – Lägg till nya termer
3. **artwork/README.md** – Lägg till nya kapitelprompter i tabellen
4. **build/build.sh** – Uppdatera CHAPTERS-array (om hårdkodad)

## Tidsplan (förslag)

| Vecka | Aktivitet |
|-------|-----------|
| 1 | Research för kapitel 9–11 |
| 2 | Research för kapitel 12–14 |
| 3 | Skriva kapitel 9–11 |
| 4 | Skriva kapitel 12–14 |
| 5 | Granskning alla kapitel |
| 6 | Bildgenerering + slutredigering |
| 7 | Bygga, testa, publicera |

## Checklista

### Per kapitel
- [ ] Research klar (`research/<koncept>.md`)
- [ ] Analogi vald och dokumenterad
- [ ] Kapitel skrivet (`chapters/XX-<koncept>.md`)
- [ ] Editor-granskning klar
- [ ] Fact-check klar
- [ ] Bildprompt skapad (`artwork/chapter-XX-<koncept>.txt`)
- [ ] Bild genererad (`assets/images/chapter-XX.jpg`)

### Slutförande
- [ ] README.md uppdaterad
- [ ] Ordlistan uppdaterad
- [ ] Byggt alla format (HTML, ePUB, PDF)
- [ ] Testat på olika enheter
- [ ] Publicerat till GitHub Pages
- [ ] Skapat release v2.0.0

## Kommandon

```bash
# Bygg och testa lokalt
bash build/build.sh all

# Öppna för granskning
open dist/monster-av-mening.html
open dist/monster-av-mening.epub
open dist/monster-av-mening.pdf
```

## Anteckningar

- Behåll samma ton och stil som första upplagan
- Bibehåll ~2000 ord per kapitel
- Använd samma färgpalett för bilder (varma jordtoner + elektriskt blått)
- Korslänka till befintliga kapitel där relevant
