# Embeddings

## Teknisk Definition

Embeddings är en representation learning-teknik som mappar komplex data till ett vektorrum av numeriska vektorer. Ett embedding representerar ord, meningar eller dokument som täta vektorer i ett flerdimensionellt rum där semantiska relationer bevaras.

**Kärnan**: En embedding omvandlar abstrakt information till en position i ett numeriskt rum, där närhet motsvarar semantisk likhet.

### Matematisk representation
- En embedding för "hund" kan vara: [0.23, -0.45, 0.87, 0.12, -0.33, ...]
- Ofta 100-1000+ dimensioner
- Dimensionerna har ingen explicit mening – mönstret av värden är det viktiga

## Hur Det Fungerar

### Grundprincip

Embeddings arbetar på principen att ord med liknande betydelser ska ha liknande vektorrepresentationer. Modellen lär sig att placera semantiskt relaterade ord nära varandra i vektorrummet.

### Viktiga arkitekturer

**Word2Vec (Google, 2013)**:
- CBOW: Förutsäger aktuellt ord från omgivande ord
- Skip-gram: Förutsäger omgivande ord från aktuellt ord

**Moderna transformers (BERT, GPT)**:
- Kontextuella embeddings – samma ord får olika vektorer beroende på sammanhang
- "Bank" har olika embedding i "sitta på en bank" vs "pengarna är i banken"

### Vektoraritmetik och analogier

En fascinerande egenskap: semantiska relationer är nästan linjära:
- king - man + woman ≈ queen
- Paris - France + Sweden ≈ Stockholm

Detta visar att embeddings fångar abstrakta relationer mellan koncept.

## Praktisk Användning

### RAG (Retrieval-Augmented Generation)

RAG använder embeddings som ryggrad i semantisk sökning:

1. **Indexering**: Dokument omvandlas till embeddings
2. **Query**: Användarens fråga omvandlas till embedding
3. **Retrieval**: Hittar mest likande dokument via cosinus-likhet
4. **Generation**: LLM får frågan och relevanta dokument som kontext

**Fördelar**: Minskar hallucinationer, hanterar kunskapsföråldring, möjliggör källhänvisningar.

### Rekommendationssystem

- **Netflix**: Användar-embeddings baserat på tittarhistorik
- **Spotify**: Låt-embeddings för musikrekommendationer

## Vanliga Missförstånd

### "Embeddings förstår verklig mening"

**Verklighet**: Embeddings fångar statistiska samförekomstmönster. De "vet" inte att en hund är ett djur – de vet bara att orden ofta förekommer nära varandra.

**Exempel**: "The investment returned 2% annually" och "The investment returned 20% annually" kan få likhetsscore på 0.97 – systemet ser inte skillnaden mellan 2% och 20%.

### "Samma embedding fungerar för alla uppgifter"

**Verklighet**: Olika uppgifter kräver ofta finjusterade embeddings. Ett embedding tränat på Wikipedia kan vara dåligt för medicinska texter.

## Nyckelinsikter för Översättning

### Likheter med mänsklig kognition

**Associativt minne och semantiskt nätverk**: Embeddings liknar hur människor organiserar semantiskt minne:
- Koncept lagras i relation till varandra, inte isolerat
- "Hund" aktiverar närliggande koncept som "valp", "svans", "skäll"

Neurovetenskap visar att mänsklig hjärna representerar semantisk information i distribuerade mönster över cortex – påfallande likt hur embeddings distribuerar mening över vektordimensioner.

**Mental navigation**: Forskning visar att hippocampus-entorhinal system representerar abstrakta koncept som kognitiva kartor. Vi "navigerar mentalt" genom koncept som om de vore platser – exakt vad ett embedding-vektorrum representerar.

**Analogi-tänkande**: Vektoraritmetik liknar mänsklig förmåga att tänka analogiskt:
- "Om katt förhåller sig till kattunge som hund till X, då är X = valp"

### Skillnader från mänsklig kognition

1. **Ingen kroppslig förankring**: Människor lär sig genom fysisk interaktion. Embeddings är enbart språkstatistik.

2. **Ingen kausal förståelse**: Människor förstår orsak-verkan. Embeddings ser bara korrelationer.

3. **Saknar episodiskt minne**: Människor minns specifika upplevelser. Embeddings har bara komprimerad statistik.

### Kraftfulla analogier

- **Mental karta**: Navigera genom idéer som genom ett landskap
- **Associationsnätverk**: Tankens spindelnät där koncept är sammankopplade
- **Begreppsmoln**: Ord existerar i moln av relaterade begrepp, inte isolerade definitioner

## Källor

- Embeddings | Machine Learning (Google for Developers)
- What are vector embeddings? (Meilisearch)
- Word2Vec For Word Embeddings (Analytics Vidhya)
- Mental search of concepts (Nature Communications)
- The Neurobiology of Semantic Memory (PMC)
