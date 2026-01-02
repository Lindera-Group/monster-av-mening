# Uppdatera Ordlista

Generera eller uppdatera den samlade ordlistan med alla översättningar.

## Arbetsflöde

### 1. Samla Alla Översättningar
Läs alla filer i `/glossary/` och extrahera:
- AI-koncept
- Mänsklig motsvarighet
- Kort beskrivning

### 2. Generera Ordlista
Skapa `/glossary/INDEX.md`:

```markdown
# Ordlista: AI → Människa

> Alla översättningar samlade på ett ställe

## Snabbguide

| AI-Koncept | Mänsklig Motsvarighet | Kapitel |
|------------|----------------------|---------|
| Context window | Arbetsminne | 01 |
| Token | Tankeenhet | 02 |
| ... | ... | ... |

## Detaljerade Beskrivningar

### A
**Attention** → *Fokus/uppmärksamhet*
[Kort beskrivning]

### C
**Context window** → *Arbetsminne*
[Kort beskrivning]

[etc. alfabetiskt]
```

### 3. Identifiera Luckor
Lista koncept som nämnts men inte har egna kapitel:
- Koncept utan `/glossary/{koncept}.md`
- Koncept refererade i andra kapitel

### 4. Föreslå Nästa Steg
Rekommendera vilka koncept som bör dokumenteras härnäst baserat på:
- Hur ofta de refereras
- Hur centrala de är för förståelse
- Logisk läsordning
