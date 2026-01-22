# Inference

## Teknisk Definition

Inference (slutledning/tillämpning) är processen där en tränad AI-modell genererar förutsägelser eller output baserat på ny, tidigare osedd data. Det är den produktiva fasen av maskininlärning – när modellen faktiskt används för sitt avsedda syfte efter att träningen är avslutad.

Tekniskt innebär inference en "forward pass" genom nätverket: input-data multipliceras med inlärda vikter lager för lager tills ett slutligt svar produceras. Till skillnad från träning sker ingen backpropagation eller viktuppdatering – modellens parametrar är frysta.

## Hur Det Fungerar

### Forward Pass (Framåtpropagering)

1. **Input-mottagning**: Modellen tar emot ny data (text, bild, ljud)
2. **Tokenisering**: För språkmodeller omvandlas text till tokens
3. **Lager-för-lager-beräkning**:
   - Varje lager utför matrismultiplikationer: `output = weights × input + bias`
   - Aktivationsfunktioner (ReLU, softmax) appliceras
   - Mellanliggande värden beräknas och lagras (för attention-mekanismer)
4. **Output-generering**: Det sista lagret producerar modellens svar

### Tekniska Operationer

För transformermodeller (som GPT, Claude):
- **Q, K, V-beräkning**: Query, Key, Value-matriser multipliceras
- **Attention-mekanismen**: Beräknar vilka tokens som är viktiga
- **Feed-forward-nätverk**: Transformerar information
- **KV-cache**: Lagrar tidigare beräkningar för effektivare generering

### Kritisk Skillnad: Training vs Inference

| Aspekt | Training | Inference |
|--------|----------|-----------|
| **Riktning** | Forward + backward pass | Endast forward pass |
| **Vikter** | Uppdateras kontinuerligt | Frysta (oförändrade) |
| **Data** | Stora batcher (1000+) | Små batcher (1-100) |
| **Minnesbehov** | Måste lagra gradienter | Endast aktiveringar |
| **Frekvens** | Sker en gång | Sker miljoner gånger |
| **Kostnad över tid** | Engångskostnad | Löpande, ackumulerande kostnad |

## Praktisk Användning

### Produktionsscenarion

**Interaktiva tjänster (ChatGPT, Claude)**:
- TTFT (Time to First Token): 100-500ms önskvärt
- Intertoken-latens: 20-50ms mellan ord
- Hög kostnadskänslighet – varje millisekund kostar

**Batch-processar (textanalys, översättningar)**:
- Throughput viktigare än latens
- Kontinuerlig batching: 10-50x högre genomströmning
- Stora batcher maximerar GPU-utnyttjande

### Kostnadsdynamik (2026)

**Skalpriser har sjunkit dramatiskt**:
- Inference-kostnader har minskat 1000x på 3 år
- Självhostad inference: $0.001–0.04 per miljon tokens
- Cloud API: 40–200x dyrare än självhostad

**Men inference är den verkliga kostnaden**:
- Över en modells livstid: inference kostar 15x mer än träning
- 2025: inference utgjorde 50% av all AI-beräkning
- 2026: inference uppskattas vara 67% av AI-compute-marknaden

### Modern Trend: Inference-Time Compute Scaling

Traditionellt: modeller blir smartare genom mer träning.

Ny trend (2026): modeller får mer räknekraft under inference för att resonera bättre.

**Exempel**:
- **OpenAI o1**: Använder "kedjeresonemanssteg" under inference
- **DeepSeek R1**: Genererar flera kandidatsvar och verifierar dem
- **Qwen QwQ**: Allokerar dynamisk beräkningstid per fråga

**Mekanism**:
- Generera N kandidat-resonemangssteg
- Använd en "verifierare" för att betygsätta dem
- Välj bästa vägen och fortsätt
- Resulterar i längre svarstider men bättre svar

## Vanliga Missförstånd

### ❌ "Inference är samma sak som att köra programkod"
**Sanning**: Inference är probabilistisk och icke-deterministisk. Samma input kan ge olika output (beroende på temperature-inställningar). Det är mer som en "soft lookup" i ett enormt statistiskt rum än exekvering av instruktioner.

### ❌ "När modellen är tränad är inference gratis/billigt"
**Sanning**: Inference är resurskrävande och kostar mer än träning över tid. Varje AI-interaktion kräver tusentals matrismultiplikationer och gigabyte av GPU-minne.

### ❌ "Större modeller är alltid bättre för inference"
**Sanning**: Större modeller har högre latens och kostnad. För produktionsanvändning optimeras ofta med mindre, snabbare modeller (distillation) eller kvantisering.

### ❌ "Inference sker en gång per fråga"
**Sanning**: För varje genererat ord/token sker en ny forward pass. Ett 100-ords svar kräver 100 separata inference-steg (autoregressive generering).

### ❌ "Inference använder bara modellen"
**Sanning**: Moderna system använder KV-cache (key-value cache), attention-optimering, batching, och minneshantering för att göra inference praktiskt genomförbar.

## Nyckelinsikter för Översättning

### Likheter med Mänskligt Tänkande/Resonemang

1. **Aktivering av kunskap**: Som när du "applicerar" din utbildning på ett nytt problem
2. **Automatisk respons**: Väl inlärda mönster aktiveras utan medveten ansträngning
3. **Forward-only process**: Du kan inte "gå bakåt" och ändra din grundkunskap i realtid
4. **Kontextberoende**: Samma kunskap ger olika svar beroende på frågan

### Avgörande Skillnader

1. **Ingen djup reflektion**: Inference är mekaniskt – inga "aha-upplevelser" sker
2. **Fryst kunskap**: Människor kan lära sig under resonemang, AI kan inte (traditionellt)
3. **Ingen metakognition**: AI "vet inte vad den vet" under inference
4. **Deterministisk matematik**: Bakom varje ord är exakta tal, inte "känslor" för rätt svar

### Varför Analogin "Tänkande/Resonemang" Fungerar

**Styrkor**:
- Fångar "tillämpningsfasen" av kunskap
- Förklarar skillnaden mellan att lära sig (training) och använda kunskapen (inference)
- Tydliggör att AI "resonerar" utifrån tidigare erfarenheter (träningsdata)
- Illustrerar att varje fråga kräver aktivt "tankarbete" (beräkning)

**Begränsningar**:
- Mänskligt tänkande är flexibelt och kan improvisera – AI följer fixerade vikter
- Vi tänker ofta flera steg framåt och bakåt – AI bara framåt
- Tänkande känns lätt (för vältränade uppgifter) – inference kräver massiv beräkning
- Människor har medvetenhet om sin process – inference är "blind"

### Den Nya Insikten: Inference-Time Scaling (2026)

**Traditionell modell**: Training = inlärning, Inference = automatisk tillämpning

**Ny modell**: Inference kan vara AKTIV problemlösning med "fördjupat resonemang"

Detta liknar mer människors förmåga att "tänka längre" på svåra problem:
- En svår matteproblem: tänk 30 sekunder
- En enkel addition: svara omedelbart

**Mänsklig motsvarighet**:
- Snabb inference = "System 1" (automatiskt tänkande)
- Långsam inference med reasoning = "System 2" (medvetet resonemang)

## Källor

### Grundläggande Koncept
- [AI inference vs. training: What is AI inference? | Cloudflare](https://www.cloudflare.com/learning/ai/inference-vs-training/)
- [What's the Difference Between Deep Learning Training and Inference? | NVIDIA Blog](https://blogs.nvidia.com/blog/difference-deep-learning-training-inference-ai/)
- [The difference between AI training and inference | Nebius](https://nebius.com/blog/posts/difference-between-ai-training-and-inference)

### Tekniska Detaljer
- [Forward Propagation in Neural Networks: A Complete Guide | DataCamp](https://www.datacamp.com/tutorial/forward-propagation-neural-networks)
- [How LLM Inference Works | Arpit Bhayani](https://arpitbhayani.me/blogs/how-llm-inference-works/)
- [Neural Networks: Forward pass and Backpropagation | Towards Data Science](https://towardsdatascience.com/neural-networks-forward-pass-and-backpropagation-be3b75a1cfcc/)

### Kostnader och Optimering
- [Welcome to LLMflation - LLM inference cost is going down fast | Andreessen Horowitz](https://a16z.com/llmflation-llm-inference-cost/)
- [Mastering LLM Techniques: Inference Optimization | NVIDIA](https://developer.nvidia.com/blog/mastering-llm-techniques-inference-optimization/)
- [LLM Inference Optimization Techniques: Speed & Cost Guide 2026 | Hakia](https://www.hakia.com/tech-insights/llm-inference-optimization/)
- [Demystifying Production Inference Serving for LLMs in 2026 | Medium](https://medium.com/@jsshankar/demystifying-production-inference-serving-for-large-language-models-in-2026-7cfeea701b53)

### Branschtrend 2026
- [CES 2026: AI compute sees a shift from training to inference | Computerworld](https://www.computerworld.com/article/4114579/ces-2026-ai-compute-sees-a-shift-from-training-to-inference.html)

### Inference-Time Compute Scaling
- [The State of LLM Reasoning Model Inference | Sebastian Raschka](https://magazine.sebastianraschka.com/p/state-of-llm-reasoning-and-inference-scaling)
- [Inference-Time Compute Scaling: Enhancing Reasoning in LLMs | Medium](https://medium.com/verimsabanci/inference-time-compute-scaling-enhancing-reasoning-in-llms-without-additional-training-63417b1febfc)
- [Inference-Time Scaling for Complex Tasks: ArXiv](https://arxiv.org/html/2504.00294v1)
- [Mechanisms for test-time compute | Innovation Endeavors](https://www.innovationendeavors.com/insights/mechanisms-for-test-time-compute)

### Performance och Batching
- [Achieve 23x LLM Inference Throughput & Reduce p50 Latency | Anyscale](https://www.anyscale.com/blog/continuous-batching-llm-inference)
- [LLM Inference Performance Engineering: Best Practices | Databricks](https://www.databricks.com/blog/llm-inference-performance-engineering-best-practices)
- [A Deep Dive into LLM Inference Latencies | Hathora](https://blog.hathora.dev/a-deep-dive-into-llm-inference-latencies/)
