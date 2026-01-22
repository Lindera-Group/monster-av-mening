# Transformer

## Teknisk Definition

Transformer är en neural nätverksarkitektur introducerad 2017 i artikeln "Attention Is All You Need" av Vaswani et al. Den bygger helt på attention-mekanismen och har ersatt sekventiella arkitekturer (RNN/LSTM) som standard för språkmodeller. Transformers bearbetar all input samtidigt (parallellt) istället för ord-för-ord (sekventiellt) och använder self-attention för att förstå relationer mellan alla delar av en sekvens samtidigt.

## Hur Det Fungerar

### Kärnkomponenter

1. **Self-Attention Mechanism**
   - Varje token transformeras till tre vektorer: Query (Q), Key (K), Value (V)
   - Attention-score beräknas genom att jämföra varje tokens Query mot alla andra tokens Keys
   - Score skalas ner (divideras med √d_k) för att stabilisera gradienter
   - Softmax appliceras för att få viktade relationer
   - Resultat: varje token får en representation som inkluderar information från alla andra tokens

2. **Positional Encoding**
   - Eftersom Transformers bearbetar allt parallellt saknas inneboende ordningsförståelse
   - Positionsinformation läggs till via sinusoida funktioner (sin/cos med olika frekvenser)
   - Varje position får en unik vektor som adderas till token-embeddings
   - Möjliggör att modellen förstår ordföljd trots parallell bearbetning

3. **Multi-Head Attention**
   - Kör flera attention-operationer parallellt (olika "huvuden")
   - Varje huvud kan fokusera på olika aspekter av relationer
   - Resultaten konkateneras och projiceras tillbaka
   - Standard: 8-16 attention-huvuden

4. **Encoder-Decoder Stack**
   - **Encoder**: 6 identiska lager (standard), varje med multi-head attention + feed-forward nätverk
   - **Decoder**: 6 identiska lager med masked self-attention (ser bara bakåt) + cross-attention (till encoder)
   - Residual connections och layer normalization efter varje sub-lager

### Parallellisering vs Sekventiell Bearbetning

**RNN/LSTM (gammalt)**:
- Bearbetar token-för-token i sekvens
- Token N måste vänta på Token N-1
- Hidden state förs vidare steg-för-steg
- Minnesbegränsning: svårt att komma ihåg långt tillbaka
- Training: måste vänta på varje steg = långsam

**Transformer (nytt)**:
- Bearbetar alla tokens samtidigt
- Alla tokens ser alla andra tokens direkt (via attention)
- Ingen hidden state som måste föras vidare
- Long-range dependencies: lika lätt att koppla ord 500 tokens bort som 5 tokens bort
- Training: massiv parallellisering på GPU/TPU = snabb

### Beräkningskomplexitet

- Self-attention: O(n²·d) där n = sekvenslängd, d = embedding dimension
- Detta är varför längre context windows blir dyra (kvadratisk skalning)
- FlashAttention och andra optimeringar har reducerat minnesförbrukningen avsevärt

## Praktisk Användning

### Moderna LLM:er Baserade på Transformers

**Encoder-Only (BERT-familjen)**:
- BERT: Bidirektionell förståelse, perfekt för klassificering och Q&A
- RoBERTa: Förbättrad BERT-träning
- Användning: Text-analys, sentiment, named entity recognition

**Decoder-Only (GPT-familjen)**:
- GPT-2/3/4: Text-generering, dialog, kod
- Claude: Anthropics Transformer-baserade modell
- LLaMA: Metas open-source serie
- Användning: Chatbotar, text-generering, översättning, kod-assistans

**Encoder-Decoder (T5-familjen)**:
- T5: "Text-to-Text Transfer Transformer"
- BART: Kombinerar BERT + GPT fördelar
- Användning: Översättning, sammanfattning, frågebevarande

### Bortom NLP

- **Vision Transformers (ViT)**: Bilder som sekvens av patches
- **DALL-E**: Text-till-bild med Transformer-arkitektur
- **Stable Diffusion 3**: Använder Transformers för bild-generering
- **Sora**: Video-generering med Transformers
- **AlphaFold 2**: Protein-struktur prediktion

### Prestandadata

- GPT-3: 175 miljarder parametrar, tränad på hundratals miljarder tokens
- Training-tid: Veckor på tusentals GPU:er (vs månader för gamla RNN-modeller)
- FlashAttention-2: 230 TFLOPs/s på A100 GPU (2x snabbare än original)

## Vanliga Missförstånd

### ❌ "Transformer = AI-hjärna"
**Sanning**: Transformers är en arkitektur för att bearbeta sekvenser. De har ingen medvetenhet eller förståelse – bara mönsterigenkänning på massnivå.

### ❌ "Self-attention betyder att AI:n tänker på sig själv"
**Sanning**: Self-attention betyder att varje del av inputen (t.ex. varje ord) jämför sig mot alla andra delar av samma input. Det är en matematisk operation, inte självreflektion.

### ❌ "Transformers minns allt från träningen"
**Sanning**: Transformers lagrar mönster i sina parametrar (weights), inte specifika exempel. De "minns" genom komprimerade statistiska samband.

### ❌ "Större context window = smartare Transformer"
**Sanning**: Context window påverkar hur mycket information som kan bearbetas åt gången, men inte modellens resoneringsförmåga eller "intelligens".

### ❌ "Attention är samma sak som uppmärksamhet hos människor"
**Sanning**: Attention är en viktad summering av värden. Människors uppmärksamhet involverar medvetande, intention, selektiv filtrering och neurokemi. Likheten är ytlig.

### ❌ "Transformers förstår språk som människor"
**Sanning**: Transformers lär sig statistiska samband mellan tokens. De har ingen semantisk förståelse, världsbild eller förmåga till common-sense reasoning.

### ❌ "Transformers fungerar bra för alla uppgifter"
**Sanning**: Transformers kräver enorma dataset och beräkningsresurser. De är overkill för många enklare problem. RNN kan vara bättre för resource-constrained environments.

## Nyckelinsikter för Översättning

### Kärnaspekter att Fånga

1. **Samtidig Bearbetning ("Se allt på en gång")**
   - Till skillnad från att läsa ord-för-ord, "ser" Transformers hela texten samtidigt
   - Varje del kan omedelbart relatera till alla andra delar
   - Som att titta på en hel mening istället för att täcka över ord med en linjal

2. **Relationssökande (Self-Attention)**
   - Varje ord/token aktivt "frågar" alla andra tokens: "Är du relevant för mig?"
   - Starkare kopplingar (högre attention-weight) mellan relaterade delar
   - Som att läsa en text och samtidigt hålla flera mentala trådar aktiva mellan olika ord

3. **Parallell Kapacitet**
   - Många "tankegångar" (attention heads) samtidigt
   - Varje huvud kan fokusera på olika aspekter (syntax, semantik, pragmatik)
   - Som att ha flera perspektiv på samma information samtidigt

4. **Positionsmedvetenhet**
   - Ordning spelar roll, men kommer "utifrån" (positional encoding) istället för "inifrån" (sequential processing)
   - Som att läsa ord som har sidhänvisningar snarare än att läsa dem i en ström

### Mänskliga Analogier

**Kontextmedveten tänkare**:
- När människor läser en komplex mening håller vi hela strukturen i arbetsminnet samtidigt
- Vi hoppar mentalt fram och tillbaka för att koppla samman pronomen, referenser, teman
- Transformers gör detta systematiskt för varje token mot alla andra

**Simultantolk**:
- Måste hålla hela meningar aktiva samtidigt (inte bara nuvarande ord)
- Omstrukturerar baserat på målspråkets grammatik (inte word-for-word)
- Bygger parallella representationer av käll- och målspråk

**Orkesterdirigent**:
- Ser alla musiker samtidigt (parallell observation)
- Måste förstå hur varje instruments bidrag relaterar till alla andra
- Koordinerar flera lager av information (melodi, harmoni, rytm) samtidigt

### Begränsningar i Analogin

- Människors parallella bearbetning är begränsad av arbetsminne (~7±2 enheter)
- Transformers kan "se" tusentals tokens samtidigt men har ingen medveten upplevelse
- Människor har top-down förväntningar och världskunskap som filtrerar perception
- Transformers har inga intentioner – attention-weights är resultat av träning, inte målstyrt beteende
- Människors simultantolkning involverar aktiv översättning; Transformers gör statistisk mönstermatchning

### Var Analogin Brister

1. **Medvetenhet**: Människor "upplever" att tänka kontextuellt. Transformers beräknar bara.
2. **Flexibilitet**: Människor kan anpassa strategier beroende på uppgift. Transformers kör samma algoritm oavsett.
3. **Effektivitet**: Människor kan läsa snabbt och "skumma". Transformers behandlar varje token lika (ingen inneboende prioritering).
4. **Förståelse**: Simultantolkar förstår semantik och kultur. Transformers matchar mönster utan begriplighet.

## Källor

- [Vaswani et al. (2017). "Attention Is All You Need"](https://arxiv.org/abs/1706.03762)
- [Attention Is All You Need - Wikipedia](https://en.wikipedia.org/wiki/Attention_Is_All_You_Need)
- [The Illustrated Transformer - Jay Alammar](https://jalammar.github.io/illustrated-transformer/)
- [Transformer Architecture Self-Attention Mechanism - Codecademy](https://www.codecademy.com/article/transformer-architecture-self-attention-mechanism)
- [Understanding Self-Attention - Sebastian Raschka](https://sebastianraschka.com/blog/2023/self-attention-from-scratch.html)
- [RNN vs LSTM vs Transformers - GeeksforGeeks](https://www.geeksforgeeks.org/deep-learning/rnn-vs-lstm-vs-gru-vs-transformers/)
- [Why Transformers are better than LSTM and RNN - Medium](https://medium.com/@shridharpawar77/why-transformers-are-better-than-lstm-and-rnn-6a9dbc51b178)
- [Transformer vs RNN - Kolena](https://www.kolena.com/guides/transformer-vs-rnn-4-key-differences-and-how-to-choose/)
- [On Limitations of the Transformer Architecture - arXiv](https://arxiv.org/abs/2402.08164)
- [Limitations of Transformer Architecture - Medium](https://medium.com/@thirupathi.thangavel/limitations-of-transformer-architecture-4e6118cbf5a4)
- [Foundation Models, Transformers, BERT and GPT - Niklas Heidloff](https://heidloff.net/article/foundation-models-transformers-bert-and-gpt/)
- [BERT vs GPT Models - VitalFlux](https://vitalflux.com/bert-vs-gpt-differences-real-life-examples/)
- [Positional Encoding in Transformers - Kazemnejad](https://kazemnejad.com/blog/transformer_architecture_positional_encoding/)
- [Positional Encoding Explained - Medium](https://medium.com/thedeephub/positional-encoding-explained-a-deep-dive-into-transformer-pe-65cfe8cfe10b)
- [Google Research Blog - Transformer Architecture](https://research.google/blog/transformer-a-novel-neural-network-architecture-for-language-understanding/)
- [Parallel Processing in Transformers - Medium](https://medium.com/@mail2rajivgopinath/part-7-the-power-of-now-parallel-processing-in-transformers-of-the-series-from-sequences-to-823d87c93ad4)
