# Context Window

## Teknisk Definition

Context window (kontextfönster) är det maximala antalet tokens som en språkmodell kan ta emot som input och generera som output i en enda interaktion. Det definieras av modellens arkitektur, specifikt av hur mycket minne och beräkning som allokeras för attention-mekanismen.

## Hur Det Fungerar

1. **Tokenisering**: Input-text omvandlas till tokens (subord-enheter)
2. **Positionskodning**: Varje token får en positionsmarkör
3. **Attention-beräkning**: Varje token "tittar på" alla andra tokens
4. **Gräns**: Beräkningskomplexiteten växer kvadratiskt med sekvenslängd

### Minneskomplexitet

För standard transformer-arkitektur:
- Minnesbehov: O(n²) där n = antal tokens
- Detta är varför längre context windows kräver exponentiellt mer resurser

## Praktisk Användning

### Modellstorlekar (2024)

| Modell | Context Window |
|--------|----------------|
| GPT-3.5 | 4 096 / 16 384 tokens |
| GPT-4 | 8 192 / 32 768 / 128 000 tokens |
| Claude 2 | 100 000 tokens |
| Claude 3 | 200 000 tokens |
| Gemini 1.5 | 1 000 000+ tokens |

### Token-till-ord (ungefärligt)

- Engelska: ~1.3 tokens/ord
- Svenska: ~1.5 tokens/ord
- Kod: varierar kraftigt

## Vanliga Missförstånd

### ❌ "AI:n minns vårt samtal"
**Sanning**: Varje API-anrop skickar hela konversationshistoriken. Det finns inget persistent minne mellan anrop.

### ❌ "Större fönster = smartare AI"
**Sanning**: Context window påverkar hur mycket information som kan bearbetas, inte modellens resoneringsförmåga.

### ❌ "Information i context window lagras permanent"
**Sanning**: När tokens "faller ut" ur fönstret finns de ingenstans. Det är inte som RAM som kan swappas till disk.

### ❌ "Modellen läser uppmärksamt genom hela contexten"
**Sanning**: Attention är ojämnt fördelad. Information i mitten av långa contexts får ofta mindre uppmärksamhet ("lost in the middle"-fenomenet).

## Nyckelinsikter för Översättning

### Likheter med arbetsminne

1. **Begränsad kapacitet**: Båda har en övre gräns
2. **Flyktighet**: Information försvinner om den inte aktivt underhålls
3. **Interference**: Ny information kan störa gammal
4. **Recency bias**: Nyare information har ofta starkare representation

### Avgörande skillnader

1. **Exakthet**: Arbetsminne är elastiskt, context window är exakt
2. **Långtidsminne**: Människor har LTM-backup, AI har det inte
3. **Chunking**: Människor kan effektivt gruppera information
4. **Metakognition**: Människor vet (ibland) när de glömt något

### Analogins begränsningar

- Arbetsminne involverar medvetande och uppmärksamhet
- Context window är rent mekaniskt/matematiskt
- Människor har emotionell viktning av minnen
- AI saknar "glömskekurva" – allt inom fönstret är lika tillgängligt

## Källor

- Vaswani et al. (2017). "Attention Is All You Need"
- OpenAI API Documentation
- Anthropic Claude Documentation
- Miller, G.A. (1956). "The Magical Number Seven, Plus or Minus Two"
- Baddeley, A. (2003). "Working memory: looking back and looking forward"
