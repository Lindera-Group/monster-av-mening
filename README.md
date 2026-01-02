# Mönster av mening

*det artificiella sinnet speglat i vårt*

---

## Om Boken

Denna bok förklarar AI-koncept genom att översätta dem till vardagliga mänskliga upplevelser. Istället för teknisk jargong använder vi analogier som läsaren känner igen från sitt eget liv.

Målet är att du som läsare ska kunna säga: *"Aha, så DET är vad en LLM gör – precis som när jag..."*

### Målgrupp

Bildade läsare utan teknisk bakgrund som vill förstå hur modern AI fungerar – utan att behöva lära sig programmering eller matematik.

### Ton och Stil

- Varm och nyfiken, aldrig nedlåtande
- Vardagliga exempel och situationer
- Ärlig om analogiernas begränsningar
- Teknisk korrekthet utan teknisk jargong

---

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

---

## Kärnöversättningar

| AI-Koncept | Mänsklig Motsvarighet |
|------------|----------------------|
| Context window | Arbetsminne |
| Token | Lego-bit / tankeenhet |
| Temperature | Riskvillighet |
| Hallucination | Konfabulering |
| Attention | Automatiska associationer |
| Embeddings | Mental karta |
| Training | Uppväxt / barndom |
| Weights | Frusna erfarenheter |
| Fine-tuning | Specialistutbildning |

Se [ordlistan](glossary/INDEX.md) för fullständig lista med detaljerade förklaringar.

---

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
│   └── 08-fine-tuning.md
├── research/           # Bakgrundsmaterial
│   ├── context-window.md
│   ├── token.md
│   ├── temperature.md
│   ├── hallucination.md
│   ├── attention.md
│   ├── embeddings.md
│   ├── training-weights.md
│   └── fine-tuning.md
├── glossary/           # Ordlista
│   └── INDEX.md
├── artwork/            # Bildprompter
└── .claude/            # Agentdefinitioner
    ├── agents/
    └── commands/
```

---

## Kapitelstruktur

Varje kapitel följer samma mönster:

1. **Öppning**: En relaterbar mänsklig situation
2. **Bryggan**: "På samma sätt fungerar [AI-koncept]..."
3. **Fördjupning**: Tekniska detaljer genom analogin
4. **Begränsningar**: Var analogin brister
5. **Varför det spelar roll**: Praktiska konsekvenser
6. **Sammanfattning**: Koncept + motsvarighet + nyckelinsikt

---

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

---

## Framtida Kapitel

Potentiella ämnen för utbyggnad:

- **Prompt** → Frågeställning
- **RAG** → Att slå upp innan man svarar
- **Transformer** → Kontextmedveten tänkare
- **Inference** → Tänkande
- **Latent space** → Det undermedvetna
- **Overfitting** → Fixering / övertänkande

---

## Bidra

Boken är ett pågående projekt. Förslag på:
- Bättre analogier
- Nya AI-koncept att täcka
- Korrigeringar av faktafel
- Språkliga förbättringar

...är välkomna via GitHub issues.

---

## Licens

CC BY 4.0 – Martin Linderå Nordström

---

**Författare:** Claude (Opus 4.5), Anthropic
**Projektledare:** Martin Linderå Nordström
**Ett projekt av:** Linderå Group AB, 2026
