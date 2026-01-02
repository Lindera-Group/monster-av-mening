# AI → Människa: En Översättningsguide

> En bok som förklarar AI-koncept genom mänskliga motsvarigheter

## Projektets Syfte

Denna bok gör AI begripligt genom att översätta tekniska begrepp till vardagliga mänskliga upplevelser. Målet är att läsaren ska kunna säga "Aha, så DET är vad en LLM gör – precis som när jag..."

## Agenter

Projektet använder specialiserade agenter för olika aspekter av bokskrivandet:

| Agent | Uppgift |
|-------|---------|
| `researcher` | Utforskar AI-koncept på djupet |
| `translator` | Hittar träffande mänskliga analogier |
| `writer` | Skriver engagerande kapiteltext |
| `editor` | Granskar och förfinar språk |
| `fact-checker` | Verifierar teknisk korrekthet |

## Projektstruktur

```
ai-human-translator/
├── chapters/           # Kapitel i markdown
├── research/           # Bakgrundsmaterial per koncept
├── glossary/           # Ordlista med alla översättningar
└── .claude/agents/     # Agentdefinitioner
```

## Kärnöversättningar (Exempel)

| AI-Koncept | Mänsklig Motsvarighet |
|------------|----------------------|
| Context window | Arbetsminne / närminne |
| Token | Ordstavelse eller tankeenhet |
| Temperature | Kreativitet vs försiktighet |
| Hallucination | Felminne / konfabulering |
| Fine-tuning | Specialutbildning |
| Prompt | Frågeställning / instruktion |
| Embeddings | Associationer / mentala kopplingar |
| Attention | Fokus / uppmärksamhet |
| Transformer | Kontextmedveten tänkare |
| Weights | Erfarenheter / inlärda mönster |

## Arbetsflöde

1. **Research**: Använd `researcher`-agenten för att förstå AI-konceptet fullt ut
2. **Översätt**: `translator` hittar mänskliga motsvarigheter
3. **Skriv**: `writer` skapar engagerande kapiteltext
4. **Granska**: `editor` + `fact-checker` säkerställer kvalitet

## Kommandon

```bash
/book:new-concept <koncept>    # Starta arbete med nytt AI-koncept
/book:write-chapter            # Skriv kapitel från research
/book:review                   # Granska kapitel
/book:glossary                 # Uppdatera ordlistan
```

## Stilriktlinjer

- **Ton**: Varm, nyfiken, aldrig nedlåtande
- **Målgrupp**: Bildade läsare utan teknisk bakgrund
- **Längd**: ~2000 ord per kapitel
- **Format**: Börja med analogin, fördjupa sedan
- **Exempel**: Använd vardagliga situationer

## Kapitelstruktur

Varje kapitel följer mönstret:

1. **Öppning**: En relaterbar mänsklig situation
2. **Bryggan**: "På samma sätt fungerar [AI-koncept]..."
3. **Fördjupning**: Tekniska detaljer via analogin
4. **Begränsningar**: Var analogin brister
5. **Sammanfattning**: En minnesvärd slutsats

## Verifiering

- [ ] Analogin är tekniskt korrekt
- [ ] En icke-teknisk läsare förstår
- [ ] Texten är engagerande att läsa
- [ ] Begränsningarna är tydliga
