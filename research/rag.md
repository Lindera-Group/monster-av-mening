# RAG (Retrieval-Augmented Generation)

## Teknisk Definition

Retrieval-Augmented Generation (RAG) är en teknik som optimerar språkmodellers output genom att låta dem hämta relevant information från externa kunskapsbaser innan de genererar svar. RAG kombinerar två steg: (1) informationshämtning via semantisk sökning i vektordatabaser, och (2) textskapande där den hämtade informationen integreras i modellens svar.

Till skillnad från fine-tuning, där kunskap tränas in i modellens parametrar, förblir kunskapen i RAG-system separerad i externa databaser. Detta gör RAG flexibelt, kostnadseffektivt och enkelt att uppdatera.

## Hur Det Fungerar

### Steg-för-steg-processen

1. **Förberedelse: Indexering**
   - Dokument bryts ner i mindre textbitar (chunks)
   - Varje chunk omvandlas till en embedding (vektor) via en embedding-modell
   - Embeddingarna lagras i en vektordatabas med metadata

2. **Hämtning: Retrieval**
   - Användarens fråga omvandlas till en embedding
   - Vektordatabasen söks igenom för att hitta semantiskt liknande chunks
   - Likhet beräknas med cosine similarity (vinkel mellan vektorer)
   - De mest relevanta chunks hämtas (vanligen 3-10 st)

3. **Sammansättning: Augmentation**
   - Användarens ursprungliga fråga kombineras med hämtad kontext
   - Skapar en "augmented prompt" med både fråga och relevant fakta

4. **Generering: Generation**
   - Språkmodellen tar emot den utökade prompten
   - Genererar svar baserat på både sin träning och hämtad kontext
   - Kan inkludera källhänvisningar till ursprungsdokumenten

### Tekniska detaljer: Embeddings och Vektorsökning

**Vad är embeddings?**
- Vektorer (arrayer av flyttal) som representerar text numeriskt
- Semantiskt liknande texter får vektorer som pekar åt samma håll
- Typiskt 384-1536 dimensioner
- Skapas av specialiserade modeller (t.ex. BERT, sentence-transformers)

**Vad är cosine similarity?**
- Mäter vinkeln mellan två vektorer i högdimensionellt rum
- Värde mellan -1 och 1 (1 = identisk riktning, 0 = ortogonal, -1 = motsatt)
- Ignorerar vektorlängd, fokuserar på riktning/mening
- Mest vanliga metriken för textsökning eftersom textlängd inte påverkar semantisk relevans

**Varför vektordatabaser?**
- Traditionella databaser söker exakt matchning
- Vektordatabaser söker semantisk likhet
- "bil" och "fordon" har liknande embeddings trots olika ord
- Gör att RAG förstår synonymer, relaterade koncept och kontext

## Praktisk Användning

### Användningsfall

**Kundtjänst och FAQ**
- Företags chatbots som svarar baserat på intern dokumentation
- Manualer, policies och kunskapsbaser
- Uppdateras enkelt när dokument ändras

**Enterprise-sökning**
- Semantisk sökning i företagsdatabaser
- Juridiska dokument, forskningsartiklar
- Kombinerar flera källor i svaren

**Medicin och juridik**
- AI som citerar från PubMed-artiklar
- Juridiska assistenter med lagtexter
- Kritiskt att kunna verifiera källor

**Personalassistenter**
- Notion AI, Obsidian Copilot
- Svarar baserat på användarens egna anteckningar
- Integrerar privat kunskap med allmän AI

### Populära RAG-verktyg och ramverk

- **Vektordatabaser**: Pinecone, Weaviate, Milvus, ChromaDB, FAISS
- **RAG-ramverk**: LangChain, LlamaIndex, Haystack
- **Embedding-modeller**: OpenAI embeddings, sentence-transformers, Cohere
- **Helhetslösningar**: Amazon Bedrock, Azure AI Search, Google Vertex AI

### När RAG är bättre än fine-tuning

**Använd RAG när:**
- Du behöver aktuell information (nyheter, realtidsdata)
- Informationen uppdateras ofta
- Du vill kunna verifiera källor och förklarbarhet
- Kostnaden för omträning är för hög
- Kunskapsbasen är bred över många domäner

**Använd fine-tuning när:**
- Du behöver ändra modellens stil eller ton
- Domänen är extremt specialiserad med unik terminologi
- Du har proprietär data väldigt olik förträningsdata
- Uppgiften kräver ingen ständig uppdatering
- Latens är kritiskt (inga extra hämtningar)

## Varför RAG minskar hallucinationer

### Mekanismen

**Förankring i verklighet**
- LLM:er hallucinerar när de svarar från enbart träningsdata
- RAG tvingar modellen att grunda svar i faktiska dokument
- Minskar risken för påhittade fakta

**Källverifiering**
- Svar kan inkludera vilka dokument som användes
- Användare kan dubbelkolla påståenden
- Transparent kunskapsbas

**Forskningsresultat**
- RAG minskar hallucinationer med 42-68% jämfört med ren LLM
- Medicinska AI-applikationer: upp till 89% faktisk korrekthet med PubMed
- Kombinerat med RLHF och guardrails: 96% reduktion (Stanford 2024)

### Begränsningar för hallucination-reduktion

**RAG är ingen silver bullet**
- Reducerar men eliminerar inte hallucinationer
- En Stanford-studie (2025) visade att juridisk RAG fortfarande har betydande hallucinationer
- Modellen kan fortfarande misstolka hämtad kontext
- Resoneringsfel kan uppstå trots korrekt fakta

**Kvalitetsberoende**
- "Garbage in, garbage out" - fel i kunskapsbasen följer med i svaren
- Biaser i källdokument påverkar output
- Ofullständig eller motsägelsefull information förvirrar modellen

## Vanliga Missförstånd

### ❌ "RAG ger modellen nytt långtidsminne"
**Sanning**: RAG hämtar information vid varje fråga. Det finns inget persistent minne mellan sessioner. Det är mer som att slå upp i en bok än att lära sig något nytt.

### ❌ "RAG eliminerar alla hallucinationer"
**Sanning**: RAG minskar hallucinationer kraftigt men kan inte eliminera dem helt. Modellen kan fortfarande misstolka kontext, resonera felaktigt eller hallucina detaljer utanför hämtad information.

### ❌ "RAG ersätter fine-tuning"
**Sanning**: De har olika användningsområden. RAG är för faktakunskap och uppdateringar, fine-tuning för stil, ton och domänanpassning. Ofta kombineras de.

### ❌ "RAG söker med nyckelord som Google"
**Sanning**: RAG använder semantisk sökning via embeddings. Det förstår mening, synonymer och kontext - inte bara ordmatchning. "fordon" hittar dokument om "bilar" trots olika ord.

### ❌ "Större vektordatabas = bättre svar"
**Sanning**: Kvalitet över kvantitet. Irrelevant information i databasen kan förvränga resultat. Brus minskar precision. Kuraterad, relevant data är viktigare än volym.

### ❌ "RAG-system är plug-and-play"
**Sanning**: Produktionsklara RAG-system kräver omfattande tuning: chunk-storlek, overlap, embedding-modell, antal hämtade dokument, re-ranking, metadata-filtrering. 70% av RAG-system saknar systematiska evalueringsramverk (2026).

## Nyckelinsikter för Översättning

### Likheter med mänskligt beteende

1. **Slå upp innan du svarar**: Precis som att konsultera en manual innan du ger instruktioner
2. **Arbeta med referenser**: Som att ha öppna böcker vid skrivandet
3. **Verifiera fakta**: Att dubbelkolla i en källa istället för att gissa
4. **Expertrådfrågan**: Som att ringa en kollega för specifik information
5. **Index och register**: Att använda ett index för att snabbt hitta relevant information

### Den bästa analogin: Bibliotekarie/referensarbete

**Varför passar det:**
- En bibliotekarie har inte allt i huvudet, men vet var saker finns
- Läser frågan → hittar relevanta böcker → sammanfattar svaret
- Kan citera källor och visa var informationen kommer från
- Kvaliteten beror på bibliotekets innehåll och indexering
- Snabbare och billigare än att läsa alla böcker utantill

**Detaljerad parallell:**
- **Vektordatabas** = Bibliotekets katalog/dewey-system
- **Embedding** = Ämnesklassificering
- **Cosine similarity** = Hitta böcker i närliggande hyllor
- **Retrieval** = Plocka fram 5 böcker från hyllan
- **Augmentation** = Läsa relevanta avsnitt
- **Generation** = Skriva svar baserat på de öppna böckerna

### Alternativa analogier

**Fusklappar på tenta**
- Modellen = student
- Vektordatabas = tillåtna fusklappar
- Frågan triggers sökning i fusklappar
- Svaret baseras på kombination av kunskap + fusklappar
- Begränsning: studenten måste fortfarande förstå och formulera

**Open-book-test vs closed-book**
- Fine-tuning = closed-book (allt i huvudet)
- RAG = open-book (får slå upp)
- Open-book ger färskare, verifierbar information
- Men kräver att man vet var man ska leta

**Expertpanel med sekreterare**
- Sekreterare (retrieval) samlar relevant material
- Expert (LLM) tolkar och formulerar svar
- Både sekreterarens sökförmåga och expertens tolkning påverkar kvalitet

### Avgörande skillnader från mänskligt beteende

1. **Hastighet**: RAG söker millisekunder, människor minuter/timmar
2. **Semantisk precision**: Embeddings fångar mening perfekt konsistent, människor tolkar subjektivt
3. **Ingen förståelse**: RAG "förstår" inte texten, bara matchningar i vektorrum
4. **Deterministisk hämtning**: Samma fråga → samma chunks (med få undantag)
5. **Ingen intuitiv filtering**: RAG kan hämta tekniskt liknande men kontextuellt irrelevant information

### Analogins begränsningar

- Bibliotekarier använder kreativitet och erfarenhet för att tolka frågor
- Människor kan bedöma källtrovärdighet intuitivt
- Vi kan göra oväntade kopplingar utanför "närliggande hyllor"
- RAG har ingen metakognition om kvaliteten på hämtad kontext
- Människor kan kompensera för dåliga källor, RAG kan inte

## Utmaningar och fellägen (2026)

### Fyra fundamentala fellägen

1. **Extraction errors**: Fel vid dokumentprocessering (PDF-parsing, OCR)
2. **Context size limitations**: För mycket hämtad data överskrider context window
3. **Inexhaustive computation**: Hämtar inte alla relevanta chunks
4. **Computational reasoning failures**: Modellen resonerar felaktigt trots korrekt kontext

### Retrieval-specifika problem

**Relevansfel**
- Retrieval missar viktiga dokument (recall-problem)
- Retrieval inkluderar irrelevanta dokument (precision-problem)
- Domänspecifikt språk förvirrar generella embedding-modeller
- "Lost in the middle": modellen missar information mitt i lång hämtad kontext

**Over-retrieval och loops**
- Systemet hämtar för många chunks när confidence-kalibrering fallerar
- Retrieval-loopar: samma dokument hämtas upprepade gånger
- Timing-problem mellan retrieval-completion och generation-start

### Produktionsutmaningar

**Observerbarhet och debugging**
- Svårt att spåra var fel uppstår (retrieval? generation? prompt?)
- 70% av RAG-system saknar systematiska evalueringsramverk
- Verktyg som TruLens och Ragas hjälper men är fortfarande omogna

**Säkerhet**
- Prompt injection via hämtade dokument
- BadRAG och TrojanRAG: förgiftade dokument trigger specifika beteenden
- Adversarial information i kunskapsbasen

**Operational complexity**
- Tuning av chunk-storlek, overlap, top-k, re-ranking
- Val av embedding-modell påverkar massivt
- Metadata-filtrering och hybrid search (keyword + semantic)

### Kostnader och latens

- Extra API-anrop för embeddings och retrieval
- Vektordatabas-hosting och underhåll
- Latens ökar med 100-500ms jämfört med ren LLM
- Fine-tuning är dyrare upfront men snabbare vid inferens

## Källor

**Översiktsartiklar och officiell dokumentation**
- [What is RAG? - Retrieval-Augmented Generation AI Explained - AWS](https://aws.amazon.com/what-is/retrieval-augmented-generation/)
- [What is RAG (Retrieval Augmented Generation)? | IBM](https://www.ibm.com/think/topics/retrieval-augmented-generation)
- [What Is Retrieval-Augmented Generation aka RAG | NVIDIA Blogs](https://blogs.nvidia.com/blog/what-is-retrieval-augmented-generation/)
- [Retrieval-augmented generation - Wikipedia](https://en.wikipedia.org/wiki/Retrieval-augmented_generation)
- [Retrieval-Augmented Generation (RAG) | Pinecone](https://www.pinecone.io/learn/retrieval-augmented-generation/)

**RAG vs Fine-tuning**
- [RAG Vs. Fine Tuning: Which One Should You Choose? | Monte Carlo Data](https://www.montecarlodata.com/blog-rag-vs-fine-tuning/)
- [RAG vs. Fine-tuning | IBM](https://www.ibm.com/think/topics/rag-vs-fine-tuning)
- [RAG vs. Fine-Tuning: What Dev Teams Need to Know | Heavybit](https://www.heavybit.com/library/article/rag-vs-fine-tuning)
- [Augment LLMs with RAGs or Fine-Tuning | Microsoft Learn](https://learn.microsoft.com/en-us/azure/developer/ai/augment-llm-rag-fine-tuning)

**Hallucinations och noggrannhet**
- [How to Prevent LLM Hallucinations: 5 Proven Strategies | Voiceflow](https://www.voiceflow.com/blog/prevent-llm-hallucinations)
- [RAG hallucination: What is it and how to avoid it | K2View](https://www.k2view.com/blog/rag-hallucination/)
- [Enhancing LLM Factual Accuracy with RAG to Counter Hallucinations (arXiv)](https://arxiv.org/html/2403.10446v1)
- [Detect hallucinations for RAG-based systems | AWS ML Blog](https://aws.amazon.com/blogs/machine-learning/detect-hallucinations-for-rag-based-systems/)
- [Legal RAG Hallucinations (Stanford, 2025)](https://dho.stanford.edu/wp-content/uploads/Legal_RAG_Hallucinations.pdf)

**Begränsningar och fellägen**
- [Understanding the limitations and challenges of RAG systems | TechTarget](https://www.techtarget.com/searchenterpriseai/tip/Understanding-the-limitations-and-challenges-of-RAG-systems)
- [Ten Failure Modes of RAG Nobody Talks About | DEV Community](https://dev.to/kuldeep_paul/ten-failure-modes-of-rag-nobody-talks-about-and-how-to-detect-them-systematically-7i4)
- [Fundamental Failure Modes in RAG Systems | PromptQL](https://promptql.io/blog/fundamental-failure-modes-in-rag-systems)
- [RAG Problems Persist. Here Are Five Ways to Fix Them | IBM](https://www.ibm.com/think/insights/rag-problems-five-ways-to-fix)
- [Understanding Failures and Mitigation Strategies in RAG Pipelines | DeconvoluteAI](https://deconvoluteai.com/blog/rag/failure-modes)

**Embeddings och vektorsökning**
- [Vector Similarity Explained | Pinecone](https://www.pinecone.io/learn/vector-similarity/)
- [What Is Cosine Similarity? | IBM](https://www.ibm.com/think/topics/cosine-similarity)
- [Understanding embeddings | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-foundry/openai/concepts/understand-embeddings?view=foundry-classic)
- [Vector Search Explained | Weaviate](https://weaviate.io/blog/vector-search-explained)
- [What is cosine similarity and why is it used in semantic search? | Milvus](https://milvus.io/ai-quick-reference/what-is-cosine-similarity-and-why-is-it-used-in-semantic-search)

**Trender 2026**
- [Understanding Retrieval-Augmented Generation (RAG) | Medium, Jan 2026](https://medium.com/@koushikkushal95/understanding-retrieval-augmented-generation-rag-b5aa0279af74)
- [Retrieval-Augmented Generation Redefining the AI Landscape in 2026 | VMblog](https://vmblog.com/archive/2025/12/15/retrieval-augmented-generation-rag-redefining-the-ai-landscape-in-2026.aspx)
- [Retrieval-Augmented Generation: A Comprehensive Survey (arXiv, 2025)](https://arxiv.org/html/2506.00054v1)
- [Top 5 RAG Evaluation Platforms in 2026 | Maxim AI](https://www.getmaxim.ai/articles/top-5-rag-evaluation-platforms-in-2026/)
