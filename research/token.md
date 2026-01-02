# Token

## Teknisk Definition

En **token** är den minsta meningsbärande enheten av text som en AI-modell bearbetar. Till skillnad från vad många tror är en token inte samma sak som ett ord – det är istället den grundläggande dataenheten som språkmodeller använder för att förstå och generera text.

Tokens kan vara:
- Hela ord (vanliga korta ord som "the", "is", "cat")
- Delar av ord, så kallade subwords (prefix, suffix, ordstammar)
- Enstaka tecken
- Mellanslag och skiljetecken
- Till och med byte-sekvenser för att hantera alla möjliga Unicode-tecken

### Statistiska Tumregler

För engelska gäller ungefär:
- 1 token ≈ 4 tecken
- 1 token ≈ 0,75 ord (eller 1,33 tokens per ord)
- 100 tokens ≈ 75 ord

**Viktigt**: Dessa siffror varierar kraftigt mellan språk. Icke-latinska språk kan kräva betydligt fler tokens för samma mängd information.

### Varför Inte Bara Använda Ord?

Modeller använder tokens istället för ord av flera anledningar:

1. **Hanterar okända ord**: Genom att dela upp ord i mindre delar kan modellen förstå nya ord den aldrig sett
2. **Hanterar morfologi**: Prefix och suffix kan separeras och förstås individuellt ("un-believ-able")
3. **Språkoberoende**: Fungerar för språk utan ordmellanslag (kinesiska, japanska)
4. **Effektivitet**: Balanserar vokabulärstorlek med täckning

## Hur Det Fungerar

### Tokeniseringsprocessen

Flödet ser ut så här:

**Text → Tokens → Token-ID:n → Embeddings → Modellbearbetning**

1. **Input-text**: "Natural Language Processing is exciting"
2. **Tokenisering**: Texten delas upp i tokens beroende på algoritm
3. **Numerisk mappning**: Varje token får ett unikt ID-nummer (eftersom neurala nätverk bara kan arbeta med siffror)
4. **Embedding**: Varje token-ID konverteras till en högdimensionell vektor som fångar semantisk betydelse
5. **Bearbetning**: Modellen arbetar med dessa numeriska representationer

### De Tre Huvudalgoritmerna

Modern AI använder främst tre tokeniseringsalgoritmer:

#### 1. Byte-Pair Encoding (BPE)

**Används av**: GPT-serien (GPT-2, GPT-3, GPT-4)

**Så fungerar det**:
1. Börja med individuella tecken som tokens
2. Analysera träningsdatan och hitta det vanligaste teckenparet
3. Slå samman detta par till en ny token
4. Upprepa tills önskad vokabulärstorlek nås

**Exempel**:
- Ordet "unhappiness" kan delas upp som: ["un", "hap", "p", "in", "es", "s"]
- Om "unhappiness" finns i träningsdatan som ett vanligt ord blir det en enda token

**Princip**: BPE är **frekvensbaserad** – den slår samman de vanligaste paren.

#### 2. WordPiece

**Används av**: BERT, DistilBERT, Electra

**Så fungerar det**:
1. Börja också med individuella tecken
2. Men istället för att välja de vanligaste paren, välj det par som **maximerar sannolikheten** för träningsdatan
3. Använd speciella markörer (##) för att visa att en token fortsätter från föregående

**Exempel**:
- "unhappiness" → ["unhapp", "##iness"]
- "##" visar att "iness" fortsätter från föregående token

**Princip**: WordPiece är **sannolikhetsbaserad** – den optimerar för data-likelihood, inte bara frekvens.

#### 3. SentencePiece

**Används av**: Claude, LLaMA, T5, mBERT

**Så fungerar det**:
- Behandlar text som sekvenser av Unicode-tecken utan språkspecifik logik
- Behandlar mellanslag som speciella symboler istället för ordavgränsare
- Kan köra både BPE och Unigram Language Model (probabilistisk)

**Fördelar**:
- Fungerar utmärkt för flerspråkiga modeller
- Hanterar språk utan ordmellanslag (kinesiska, japanska, thailändska)
- Mer förlåtande med stavfel och flerspråkig text

**Princip**: SentencePiece är **språkoberoende** och behandlar alla språk likvärdigt.

## Praktisk Användning

### Token-Gränser i Populära Modeller (2025)

| Modell | Kontext-Fönster | Tokeniser | Vokabulär |
|--------|-----------------|-----------|-----------|
| GPT-3.5 | 4,096 tokens | BPE (cl100k_base) | ~100k tokens |
| GPT-4 | 8,192-128,000 tokens | BPE (cl100k_base) | ~100k tokens |
| GPT-4o | 128,000 tokens | BPE (o200k_base) | ~200k tokens |
| Claude 3.5 Sonnet | 200,000 tokens | Proprietary | Okänd |

### Språkspecifika Skillnader

Tokenisering fungerar **mycket olika** beroende på språk:

#### Engelska (Mest Effektiv)
- 128k tokens ≈ 96k ord
- Ratio: ~0,75 ord per token (1,33 tokens per ord)
- De flesta vanliga engelska ord är 1-2 tokens

#### Tamil/Telugu (Extremt Ineffektiv)
- Kan generera upp till **10 gånger fler tokens** för samma mängd text som engelska
- Enkla kombinationer som "நீ" (du) delas upp i 4 separata tokens

#### Japanska
- 魚 (fisk) = 3 tokens
- Mycket högre token-till-tecken ratio

## Vanliga Missförstånd

### Missförstånd 1: "Tokens = Ord"

**Fel**: Tokens är inte ord. En token är cirka ¾ av ett ord i engelska.

**Verklighet**: Ett ord kan vara en, två, tre eller fler tokens beroende på hur vanligt det är:
- "fish" = 1 token
- "marriage" = 2 tokens
- "unbelievable" kan vara 3 tokens: ["un", "believ", "able"]

### Missförstånd 2: "Modellen Förstår Ord och Språk"

**Fel**: Modellen "läser" eller "förstår" text som människor gör.

**Verklighet**: Modellen ser bara siffror. Den konverterar tokens till numeriska ID:n och sedan till matematiska vektorer. All "förståelse" är statistiska mönster i högdimensionella rymder.

### Missförstånd 3: "Tokenisering Fungerar Lika för Alla Språk"

**Fel**: Token-till-ord ratio är konstant över språk.

**Verklighet**: Engelska är extremt gynnats i tokeniseringsdesign. Icke-latinska språk kräver 2-10 gånger fler tokens för samma innehåll.

## Nyckelinsikter för Översättning

### Potentiella Analogier

- **Stavelser**: Som tokens delar stavelser upp ord i mindre enheter, men stavelser följer fonologiska regler medan tokens är statistiska
- **Tankeenheter**: Snabba, fragmenterade tankebitar snarare än kompletta meningar
- **Lego-bitar**: Byggstenar som kan kombineras på olika sätt beroende på behov
- **Digital kompression**: Text bryts ner och rekonstrueras, användaren ser bara in och ut

### Vad Analogin Måste Fånga

1. **Artificiella enheter**: Tokens är skapade för beräkningseffektivitet, inte naturliga språkenheter
2. **Statistisk vs semantisk**: AI bearbetar mönster i siffror, inte betydelse direkt
3. **Språkbias**: Engelska är starkt gynnad, andra språk är "dyrare" att bearbeta
4. **Preprocessing, inte intelligens**: Tokenisering händer före allt "tänkande"

## Källor

- Tokenization in LLMs – BPE and WordPiece (DataTechNotes)
- How tokenizers work in AI models (Nebius)
- Summary of the tokenizers (Hugging Face)
- What is a token in AI? (Nebius)
- Complete Guide to LLM Tokenization (LLM Calculator)
- Explaining Tokens — the Language and Currency of AI (NVIDIA Blog)
