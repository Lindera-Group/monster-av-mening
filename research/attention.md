# Attention

## Teknisk Definition

Attention-mekanismen är en beräkningsmetod i maskininlärning som tillåter AI-modeller att dynamiskt fokusera på de mest relevanta delarna av input-data. I transformer-arkitekturen (introducerad 2017 i "Attention Is All You Need" av Vaswani et al.) utgör attention kärnan i hur modellen förstår relationer mellan ord.

**Self-attention** är en specifik variant där olika positioner i samma sekvens relateras till varandra. Detta tillåter varje ord (token) att "titta på" alla andra ord i meningar och väga deras relevans.

**Multi-head attention** är en utökning där flera attention-operationer körs parallellt, vilket tillåter modellen att simultant fokusera på olika aspekter av input.

## Hur Det Fungerar

### Kärnan: Query, Key, Value (QKV)

Attention-mekanismen använder tre komponenter för varje token:

- **Query (Q)**: Representerar vad ett ord "letar efter" i andra ord
- **Key (K)**: Representerar vad ett ord "erbjuder" som information
- **Value (V)**: Representerar det faktiska innehållet som ordet bidrar med

### Scaled Dot-Product Attention: Formeln

**Attention(Q, K, V) = softmax(QK^T / √d_k) × V**

### Steg för steg:

1. **Beräkna likhet**: Multiplicera Query med Key-transponaten för att mäta relevans
2. **Skalning**: Dela med √d_k för att undvika extrema softmax-värden
3. **Normalisering**: Applicera softmax för sannolikhetsfördelning
4. **Viktad summering**: Multiplicera attention-vikterna med Value-vektorerna

Resultatet är att varje tokens nya representation är en viktad blandning av alla tokens värden, där vikterna bestäms av relevans.

### Multi-Head Attention

Istället för en enda attention-operation körs flera parallella "huvuden", var och en med sina egna Q, K, V-transformationer. Olika huvuden kan specialisera sig på:
- Subjekt-verb-relationer
- Pronomen-referenser
- Adjektiv-substantiv-kopplingar

## Praktisk Användning

### Varför Attention Revolutionerade NLP

Före attention dominerade Recurrent Neural Networks (RNNs) NLP. RNNs hade kritiska begränsningar:
- Sekventiell bearbetning (förhindrar parallellisering)
- Svårt att fånga långväga beroenden
- Vanishing/exploding gradients

**2017**: "Attention Is All You Need" visade att attention kunde ersätta recurrence helt. Transformer-arkitekturen:
- Möjliggör fullständig parallellisering
- Hanterar långväga beroenden med O(1) operationer
- Blev grunden för GPT, BERT, Claude, etc.

### Moderna tillämpningar

- **LLMs**: ChatGPT, GPT-4, Claude, Gemini
- **Vision Transformers (ViT)**: Överträffar CNNs i bildklassificering
- **Multimodala modeller**: Text-till-bild, text-to-speech

## Vanliga Missförstånd

### "Attention = Mänsklig uppmärksamhet"

**Felaktigt**. Trots namnet är AI-attention en matematisk konstruktion baserad på inlärda datamönster, inte en kognitiv process. Transformer-arkitekturen har ingen medvetenhet. Namnet är en **analogi** som hjälper oss förstå funktionen.

### "Större attention window = Smartare modell"

**Felaktigt**. Attention-mekanismen handlar om hur modellen väger relevans mellan tokens, inte om hur många tokens den kan processa (det bestäms av context window).

## Nyckelinsikter för Översättning

### Likhet med mänsklig uppmärksamhet

**Selektiv fokus**: Precis som människor inte kan bearbeta all information samtidigt, väljer attention-mekanismen vilka delar av input som är viktigast.

**Mänskligt exempel**: När du läser "Katten som min granne äger jagade musen", måste du hålla reda på att "katten" är subjektet även när mellanliggande ord distraherar.

**AI-attention**: Query från "jagade" ger hög attention-vikt till "katten" (subjekt) och "musen" (objekt), trots mellanliggande ord.

### Viktiga skillnader från mänsklig attention

1. **Parallell vs. Sekventiell**: AI-attention bearbetar alla tokens samtidigt. Människor läser sekventiellt.

2. **Ingen top-down-kontroll**: Mänsklig uppmärksamhet styrs av mål och intention. AI-attention styrs enbart av inlärda vikter.

3. **Inget verkligt "fokus"**: AI beräknar vikter för ALLA tokens varje gång. Människor filtrerar bort information helt.

4. **Deterministisk**: Givna samma input ger samma attention-vikter. Mänsklig uppmärksamhet påverkas av trötthet, motivation, känslor.

### Bästa analogin: "Mentala associationer i kontextmedvetet tänkande"

Snarare än bokstavlig "uppmärksamhet", kan attention bäst förstås som:

**När du tolkar ett ord i en mening aktiverar din hjärna automatiskt associationer till andra relevanta ord baserat på kontext.**

- "Bank" → nära "pengar", "konto" (finansiell kontext)
- "Bank" → nära "flod", "strand" (geografisk kontext)

Detta är närmare vad attention gör: väga relevans mellan ord baserat på inlärd kontext.

## Källor

- Attention Is All You Need (2017) - Vaswani et al.
- What is an attention mechanism? (IBM)
- What is Attention and Why Do LLMs Need It? (DataCamp)
- Attention in Psychology, Neuroscience, and Machine Learning (Frontiers)
