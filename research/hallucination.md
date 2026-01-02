# Hallucination

## Teknisk Definition

En AI-hallucination uppstår när en språkmodell (LLM) genererar text som ser trovärdig och sammanhängande ut, men som är faktafelaktig, logiskt inkonsekvent eller helt påhittad. Det finns två huvudtyper:

- **Faktafel (Factuality errors)**: Modellen påstår saker som är objektivt felaktiga
- **Trovärdighetsfel (Faithfulness errors)**: Modellen förvränger eller feltolkar källmaterial

### Varför "Hallucination" Är Ett Problematiskt Begrepp

Termen "hallucination" är kontroversiell inom AI-forskning. I klinisk psykologi refererar hallucination till falska sinnesupplevelser. Eftersom AI inte har sinnesupplevelser är termen missvisande.

Ett bättre begrepp är **konfabulering** (confabulation) – när någon konstruerar falsk information utan avsikt att ljuga, ofta för att fylla minnesluckor. Detta fångar bättre AI:ns beteende: systemet "fyller i luckor" med statistiskt troliga men felaktiga svar.

## Hur Det Fungerar

### Statistisk Natur

Språkmodeller "vet" inte fakta. De förutsäger nästa token baserat på statistiska mönster i träningsdata. Detta skapar grundläggande problem:

1. **Informationsbrist**: Om ett faktum bara förekommer en gång i träningsdatan, kan modellen inte skilja det från felaktig information

2. **Singleton Rate Problem**: Om 20% av fakta endast förekommer en gång i korpusen, kommer även en perfekt modell att hallucinera på cirka 20% av relaterade frågor

3. **Incitamentsproblemet**: Utvärderingssystem belönar gissningar över att erkänna osäkerhet – "Jag vet inte" ger noll poäng

### Antropics Upptäckt (2025)

Interpretability-forskning på Claude visade att modellen har interna kretsar som normalt säger "Jag vet inte" vid osäkerhet. Hallucination uppstår när dessa kretsar **felaktigt inhiberas** – till exempel när Claude känner igen ett namn men saknar tillräcklig information om personen.

## Praktisk Användning

### Hur Det Yttrar Sig

1. **Fabricerade källor**: ChatGPT citerar vetenskapliga artiklar som inte existerar (en studie visade 69 av 178 referenser hade felaktig DOI)

2. **Falska rättsfall**: Advokat Stephen Schwartz fick 90 dagars avstängning efter att ha lämnat in sex ChatGPT-genererade rättsfall som inte existerade

3. **Bizarra råd**: Googles "AI Overview" föreslog att tillsätta lim i pizzasås

### Hallucinationsgrader 2025

- Google Gemini-2.0-Flash-001: 0.7%
- ChatGPT GPT-4o: ~1.5%
- Claude: 4.4-10.1% (beroende på version)

### Strategier för att Minska Hallucination

**RAG (Retrieval-Augmented Generation)**: Minskar hallucination med 42-68% genom att hämta extern information före svargenerering.

**Kalibrerad Osäkerhet**: Målet bör inte vara "noll fel" utan system som transparent signalerar tvivel och kan vägra svara vid osäkerhet.

## Vanliga Missförstånd

### "AI:n ljuger medvetet"

**FALSKT**: Hallucination är inte medvetet bedrägeri. AI har ingen intention eller medvetenhet. Professor Ethan Mollick beskrev det: "ChatGPT är som en villig-att-göra-till-lags praktikant som ibland ljuger för dig" – men utan intentionen att ljuga.

### "Hallucination är ett mjukvarufel som kan fixas"

**FALSKT**: Hallucination är en **teoretiskt oundviklig egenskap** hos språkmodeller baserade på statistisk prediktion. Det bottnar i informationsknapphet i träningsdata och det statistiska prediktionsmålet.

### "RAG löser problemet"

**DELVIS FALSKT**: RAG minskar hallucination kraftigt men eliminerar det inte. Modeller kan ignorera hämtad information eller fylla i luckor när informationen är inkomplett.

## Nyckelinsikter för Översättning

### Konfabulering, Inte Hallucination

AI:ns "hallucination" liknar mest mänsklig **konfabulering**:

**Mänsklig konfabulering** (från neuropsykologi):
- Produktion av fabricerade minnen utan avsikt att bedra
- "Honest lying" – patienten tror sanningsenligt på påståendet
- Används för att fylla minnesluckor, bevara självbild
- Förekommer vid Wernicke-Korsakoffs syndrom, frontala hjärnskador

**AI-konfabulering**:
- Produktion av trovärdig men felaktig text
- Utan intention (AI saknar intention)
- "Fyller luckor" när träningsdata är otillräcklig

### Split-Brain Experiment Analogi

Klassiskt konfabulations-exempel:
- Split-brain patienter fick kommando till höger hjärnhalva
- De började följa kommandot
- Vänster hjärnhalva (språksystemet) visste inte varför
- När tillfrågade, **konfabulerade** de en anledning som lät OK men var helt påhittad

**AI-analog**:
- Modellen "känner igen" ett mönster (namn, koncept)
- Den saknar tillräcklig information om detaljerna
- Men förväntas ge ett svar
- Så den genererar något som "låter rätt" baserat på liknande mönster

### Vad Analogin INTE Fångar

1. **Ingen medvetenhet**: Människor kan reflektera över sina fel. AI kan inte.
2. **Ingen intention**: Mänsklig konfabulering har ofta psykologisk funktion. AI har ingen självbild.
3. **Skala**: AI kan generera tusentals hallucinationer per sekund.

## Källor

- LLM Hallucinations in 2025 (Lakera Guide)
- Why Language Models Hallucinate (OpenAI)
- Hallucination vs. Confabulation (Psychology Today)
- Confabulation (StatPearls NCBI)
- 8 AI Hallucinations Examples (Evidently AI)
