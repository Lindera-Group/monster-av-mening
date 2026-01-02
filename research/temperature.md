# Temperature

## Teknisk Definition

Temperature är en hyperparameter som modifierar sannolikhetsfördelningen i en språkmodells token-urval. Den fungerar genom att skala logits (de råa utdatavärdena från det neurala nätverket) innan de går igenom softmax-funktionen som omvandlar dem till sannolikheter.

**Matematisk formel:**

```
P(x_i) = e^(x_i/T) / Σ_j e^(x_j/T)
```

Där:
- `x_i` är logit-värdet för token i
- `T` är temperature (T > 0)
- `P(x_i)` är den resulterande sannolikheten för token i

Temperature är INTE en sampling-strategi i sig, utan en parameter i softmax-funktionen som påverkar formen på sannolikhetsfördelningen innan själva samplingen sker.

## Hur Det Fungerar

### Grundmekanismen

1. **Logits genereras**: Det neurala nätverket producerar råa poängvärden (logits) för alla möjliga nästa tokens
2. **Temperature-skalning**: Varje logit divideras med temperature-värdet (T)
3. **Softmax appliceras**: De skalade logits omvandlas till en sannolikhetsfördelning
4. **Sampling**: En token väljs baserat på denna fördelning

### Effekt av olika Temperature-värden

#### T = 1 (Standard)
- Standardvärde som ger den ursprungliga, omodifierade sannolikhetsfördelningen
- Balanserad mellan förutsägbarhet och variation

#### T < 1 (Låg temperature)
- Förstärker skillnader mellan logits
- Skapar en "skarpare" sannolikhetsfördelning
- Token med högst logit får ännu högre sannolikhet
- **Extremfall (T → 0)**: Närmar sig greedy decoding där den mest sannolika token alltid väljs

#### T > 1 (Hög temperature)
- Minskar skillnader mellan logits
- Skapar en "plattare" sannolikhetsfördelning
- Token som normalt har lägre sannolikhet får ökad chans att väljas
- **Extremfall (T → ∞)**: Alla tokens får nästan samma sannolikhet

## Praktisk Användning

### Typiska värden och användningsområden

| Temperature | Användningsfall | Karaktäristik |
|-------------|-----------------|---------------|
| **0.0-0.3** | Faktabaserad Q&A, teknisk dokumentation | Mycket deterministisk, fokuserad, förutsägbar |
| **0.5-0.7** | Chatbotar, allmän innehållsgenerering | Balans mellan koherens och variation |
| **0.8-1.2** | Kreativt skrivande, brainstorming | Mer diverse, kreativ, mindre förutsägbar |
| **1.5-2.0** | Poesi, experimentellt skrivande | Mycket varierat, risktagande, kan bli inkoherent |

### API-specifikt

- **OpenAI**: Temperature 0.0-2.0, standard 1.0
- **Anthropic**: Temperature 0.0-1.0, standard 1.0

## Vanliga Missförstånd

### Missförstånd 1: "Temperature 0 ger alltid exakt samma svar"

**Verkligheten**: Temperature 0 eliminerar avsiktlig randomness men garanterar INTE fullständig determinism på grund av:
- Flyttalsprecision och avrundningsfel
- Parallell bearbetning kan introducera variationer
- Olika implementationer hanterar edge-cases olika

### Missförstånd 2: "Högre temperature = mer kreativitet"

**Verkligheten**: "Kreativitet" är ett missvisande begrepp. Forskning visar att temperature är:
- Svagt korrelerad med **novelty** (nyhet/originalitet)
- Måttligt korrelerad med **incoherence** (inkoherens)
- INTE korrelerad med cohesion eller typicality

Högre temperature ger mer **variation** och **randomness**, inte nödvändigtvis bättre kreativ output.

### Missförstånd 3: "Temperature påverkar modellens intelligens"

**Verkligheten**: Temperature påverkar ENDAST hur tokens samplas från fördelningen. Det ändrar inte:
- Modellens träning eller vikter
- Modellens faktakunskap
- Modellens förmåga att resonera

Det är en POST-processing parameter som styr urvalsstrategi, inte modellens kapacitet.

## Nyckelinsikter för Översättning

### Aspekter att fånga i analogin

1. **Val under osäkerhet**: Temperature handlar om HUR man väljer mellan alternativ med olika sannolikheter

2. **Risk vs säkerhet**:
   - Låg temperature = "spela säkert", välj det trygga alternativet
   - Hög temperature = "ta en chans", överväg även osannolika alternativ

3. **Inte samma som kunskap**: Temperature ändrar inte VAD du kan eller vet, bara HUR du väljer

4. **Spektrum, inte binärt**: En glidande skala från konservativt → balanserat → experimentellt → kaotiskt

5. **Kontextberoende**: Samma temperature kan vara perfekt eller katastrofal beroende på uppgift

### Möjliga mänskliga analogier

- **Beslutsfattande under press**: Hur impulsiv vs försiktig du är när du väljer
- **Ordval i konversation**: Väljer du säkra, vanliga ord eller experimenterar med ovanliga uttryck?
- **Matlagning**: Följer du receptet exakt eller improviserar?
- **Jazz-improvisation**: Håller du dig till välkända fraser eller experimenterar?

## Källor

- What is LLM Temperature? (IBM)
- LLM Temperature: How It Works and When You Should Use It (Vellum)
- Temperature Scaling in Softmax (Nipun Batra Blog)
- Is Temperature the Creativity Parameter? (arXiv)
- Temperature=0 Myth (Bartosz Mikulski)
