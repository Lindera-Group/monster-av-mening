# Granska Kapitel

Genomför en fullständig granskning av ett befintligt kapitel.

## Input
**Kapitel**: $ARGUMENTS

## Granskningsprocess

### 1. Redaktionell Granskning (editor-agent)
- Läs kapitlet i `/chapters/{kapitel}.md`
- Granska klarhet, flöde och ton
- Föreslå förbättringar
- Dokumentera ändringar

### 2. Faktakontroll (fact-checker-agent)
- Identifiera alla verifierbara påståenden
- Kontrollera mot primära källor
- Validera analogins korrekthet
- Flagga problem

### 3. Sammanställ Rapport

```markdown
## Granskningsrapport: {Kapitel}

### Redaktionella Anteckningar
[Sammanfattning från editor]

### Faktakontroll
[Resultat från fact-checker]

### Åtgärdspunkter
- [ ] [Punkt 1]
- [ ] [Punkt 2]

### Bedömning
[ ] Redo för publicering
[ ] Behöver mindre revision
[ ] Behöver större omarbetning
```
