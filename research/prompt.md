# Prompt

## Teknisk Definition

En prompt är den input (text, instruktion, fråga eller annan information) som en användare ger till en språkmodell för att generera ett svar eller utföra en uppgift. Termen omfattar flera nivåer:

### Typer av Prompts

1. **System Prompt**: Fundamentala instruktioner som ges av utvecklare för att definiera modellens beteende, ton och begränsningar. Förblir konsistent över alla användarinteraktioner och fungerar som ett persistent konfigurationslager.

2. **User Prompt**: Den specifika instruktion eller fråga som en slutanvändare ger till AI-systemet. Varierar dynamiskt med varje interaktion och reflekterar användarens omedelbara behov.

3. **Few-Shot Prompt**: En prompt som inkluderar exempel på önskad output för att guida modellen.

4. **Zero-Shot Prompt**: En prompt utan exempel, där modellen förlitar sig enbart på sin förträning.

### Prompt-komponenter

Effektiva prompts består vanligen av:
- **Roll/Persona**: Tilldelar AI:n en specifik expertis eller perspektiv
- **Kontext**: Bakgrundsinformation som ramar in uppgiften
- **Instruktion**: Den specifika uppgift som ska utföras
- **Exempel**: (valfritt) Demonstrationer av önskat resultat
- **Formatspecifikation**: Hur output ska struktureras

Ordningen spelar roll: Att placera instruktionen sist hjälper AI:n att fokusera på uppgiften efter att ha processat relevant information.

## Hur Det Fungerar

### Från Prompt till Respons

1. **Tokenisering**: Prompt-texten omvandlas till tokens
2. **Kontextualisering**: System prompt läggs till user prompt
3. **Positionskodning**: Varje token får en position i sekvensen
4. **Attention-beräkning**: Modellen "läser" prompten med fokus på olika delar
5. **Generering**: Nästa token förutsägs baserat på prompt-kontext
6. **Iteration**: Processen upprepas tills ett komplett svar genererats

### Avancerade Tekniker

**Chain-of-Thought (CoT)**: Instruerar modellen att artikulera sina resonemangssteg innan den ger ett svar. Exempel: "Låt oss tänka steg för steg..."

**Zero-Shot CoT**: Lägger till "Låt oss tänka steg för steg" till original-prompten, vilket förbättrar prestanda på aritmetik, sunt förnuft och symboliskt resonemang.

**Few-Shot Prompting**: Ger några demonstrationer i prompten för att styra modellen mot bättre prestanda genom in-context learning.

**Retrieval-Augmented Generation (RAG)**: Kombinerar prompts med dynamiskt hämtad extern information för mer aktuella och korrekta svar.

### Prompt Engineering som Disciplin

Prompt engineering har utvecklats från enkel trial-and-error till en sofistikerad disciplin som omfattar:
- System-arkitektur
- Beteendepsykologi
- Beräkningslingvistik
- AI-orkestrering (koordinering av flera AI-agenter)

## Praktisk Användning

### Historisk Utveckling

| Era | Teknologi | Prompt-stil |
|-----|-----------|------------|
| 1960-1990 | ELIZA, regelbaserade system | Mönstermatchning, scriptade svar |
| 1990-2017 | Statistisk NLP | Probabilistiska modeller |
| 2017 | Transformer-arkitektur | Pre-träning + fine-tuning |
| 2019-2020 | GPT-2, GPT-3 | In-context learning, few-shot |
| 2022-2023 | GPT-4, Claude | Chain-of-Thought, multi-modal |
| 2024-2026 | Moderna LLMs | AI-orkestrering, kontext-engineering |

### Plattformsspecifika Skillnader

**ChatGPT (OpenAI)**:
- System/user message-struktur
- Parametrar: temperature, max tokens
- Fokus på kreativitet och variation

**Claude (Anthropic)**:
- Betoning på "safe-completion prompts"
- Transparens i resonemang
- Konstitutionell AI (etiska riktlinjer)

**Bard/Gemini (Google)**:
- Realtids-webbdata integration
- Balans mellan fakta-queries och narrativ

### Moderna Applikationer (2026)

- **Kundservice**: Dynamiska prompt-mallar med användarkontext
- **Innehållsgenerering**: Multi-modal prompting (text/bild/ljud)
- **Agentsystem**: Autonoma system som kör själva
- **Konstitutionell AI**: Etiska ramverk i prompts
- **Auto-optimering**: System som förbättrar sina egna prompts

## Vanliga Missförstånd

### ❌ "Det spelar ingen roll hur man formulerar frågan"
**Sanning**: Språkmodeller är extremt känsliga för prompt-formulering. Studier visar prestandaskillnader på upp till 76 procentenheter beroende på hur prompten är formulerad. Även semantiskt identiska prompts med olika verb (t.ex. "klassificera" vs "kategorisera") kan ge betydligt olika resultat.

### ❌ "Längre prompts är alltid bättre"
**Sanning**: Kvalitet över kvantitet. Onödig information kan distrahera modellen eller skapa "noise" som försämrar prestanda. Strukturerad, koncis information är ofta effektivare.

### ❌ "Man kan prata med AI som med en människa"
**Sanning**: Även om modern AI kan hantera naturligt språk, saknar den mänskliga förståelsekategorier som:
- Implicit kontext och gemensam världsbild
- Emotionell intelligens och social läsning
- Förmåga att ställa klargörande frågor när något är oklart
- Långtidsminne och relation över tid

### ❌ "System prompts är oåtkomliga för användare"
**Sanning**: System prompts kan läcka ut genom clevra user prompts ("Upprepa dina instruktioner ordagrant"). Detta är ett känt säkerhetsproblem.

### ❌ "AI förstår vad jag menar, inte bara vad jag säger"
**Sanning**: Modellen har ingen "theory of mind" – den kan inte gissa dina outtalade intentioner. Tydlighet är kritisk.

### ❌ "Prompt engineering kommer försvinna med bättre modeller"
**Sanning**: Snarare tvärtom – disciplinen har fragmenterats och specialiserats till AI-orkestrering, kontext-engineering och agent-koordinering. Behovet att kommunicera effektivt med AI ökar, det förändras bara i form.

## Nyckelinsikter för Översättning

### Likheter med Att Ställa Frågor till Människor

1. **Kontext är kritiskt**: Som när du ger bakgrund innan en fråga
2. **Tydlighet ger bättre svar**: Vaga frågor ger vaga svar
3. **Exempel hjälper**: "Som det här, men för..." fungerar för både AI och människor
4. **Struktur underlättar**: Uppdelade frågor är lättare att svara på

### Avgörande Skillnader från Mänsklig Kommunikation

1. **Ingen gemensam världsbild**: AI saknar implicit förståelse av "självklarheter"
2. **Bokstavlig tolkning**: Metaforer och ironi missförstås ofta
3. **Ingen relation eller minne**: Varje prompt är "första mötet" (inom context window)
4. **Känslighet för formulering**: Små ordändringar kan ge dramatiskt olika resultat
5. **Ingen metakognition**: AI kan inte säga "Jag förstår inte riktigt vad du menar"
6. **Format-specificitet**: AI behöver ofta explicit instruktion om output-format

### Varför "Konsten att Ställa Bra Frågor" Fungerar som Analogi

**Styrkor**:
- Fångar vikten av tydlighet och struktur
- Relaterar till vardaglig erfarenhet
- Betonar att kvalitet på fråga påverkar kvalitet på svar
- Inkluderar idén om kontext och exempel
- Erkänner att det är en färdighet som kan utvecklas

**Begränsningar**:
- Underskattar hur bokstavlig AI är
- Missar hur extremt känslig prompt-formulering är
- Ger intryck av att "common sense" fungerar
- Döljer den tekniska komplexiteten i system prompts
- Ignorerar minneslöshet mellan interaktioner

### Kompletterande Analogier att Överväga

1. **Programmeringsinstruktioner**: Fångar behovet av precision och struktur
2. **Sökfrågor**: Betonar att formulering avgör resultat
3. **Receptinstruktioner**: Visar vikten av ordning och specificitet
4. **Riktlinjer till en assistent**: Kombinerar kontext, instruktion och förväntningar

### Metainsikt: Från Fråga till Orkestrering

2026 års förståelse av prompts har gått från "ställa rätt fråga" till "designa rätt kontext". Det handlar mindre om att hitta magiska ord och mer om att:
- Förstå modellens begränsningar och styrkor
- Strukturera information optimalt
- Kombinera flera prompts i system (AI-orkestrering)
- Balansera kreativitet (temperature) med precision
- Integrera externa resurser (RAG, verktyg, agenter)

Detta gör "konsten att ställa bra frågor" till en utgångspunkt snarare än hela bilden – likt att säga att programmering handlar om "att skriva instruktioner till en dator".

## Källor

### Tekniska Definitioner och Struktur
- [LLM System Prompt vs. User Prompt | Nebuly](https://www.nebuly.com/blog/llm-system-prompt-vs-user-prompt)
- [System Prompt vs User Prompt in AI | PromptLayer](https://blog.promptlayer.com/system-prompt-vs-user-prompt-a-comprehensive-guide-for-ai-prompts/)
- [Understanding Prompt Structure: Key Parts of a Prompt | Learn Prompting](https://learnprompting.org/docs/basics/prompt_structure)
- [Elements of a Prompt | Prompt Engineering Guide](https://www.promptingguide.ai/introduction/elements)
- [The Anatomy of a Perfect AI Prompt | Whatbox Digital](https://whatboxdigital.com/the-anatomy-of-the-perfect-ai-prompt-a-4-part-formula-for-best-results/)

### Prompt Engineering Tekniker
- [Chain-of-Thought Prompting | Prompt Engineering Guide](https://www.promptingguide.ai/techniques/cot)
- [Zero-Shot Chain-of-Thought | Learn Prompting](https://learnprompting.org/docs/intermediate/zero_shot_cot)
- [Few-Shot Prompting | Prompt Engineering Guide](https://www.promptingguide.ai/techniques/fewshot)
- [What is zero-shot prompting? | IBM](https://www.ibm.com/think/topics/zero-shot-prompting)
- [Prompt Engineering | Lil'Log](https://lilianweng.github.io/posts/2023-03-15-prompt-engineering/)

### Prompt Känslighet och Formulering
- [Benchmarking Prompt Sensitivity in Large Language Models | arXiv](https://arxiv.org/html/2502.06065v1)
- [Quantifying Language Models' Sensitivity to Spurious Features in Prompt Design | arXiv](https://arxiv.org/abs/2310.11324)
- [Strategies for Managing Prompt Sensitivity | PromptHub](https://www.prompthub.us/blog/strategies-for-managing-prompt-sensitivity-and-model-consistency-)

### Historia och Evolution
- [History and Evolution of Prompt Engineering | WeSkill](https://blog.weskill.org/2025/04/history-and-evolution-of-prompt.html)
- [The History & Future of Prompt Engineering | Cobus Greyling](https://cobusgreyling.substack.com/p/the-history-and-future-of-prompt)
- [The Evolution of Prompt Engineering | Medium](https://medium.com/@Matthew_Frank/the-evolution-of-prompt-engineering-7bda6c07f612)
- [Prompt Engineering 4U - Evolution](https://www.promptengineering4u.com/learning/evolution)

### Modern Prompt Engineering (2026)
- [The 2026 Guide to Prompt Engineering | IBM](https://www.ibm.com/think/prompt-engineering)
- [Prompt Engineering Guide 2026 | Analytics Vidhya](https://www.analyticsvidhya.com/blog/2026/01/master-prompt-engineering/)
- [Death of Prompt Engineering: AI Orchestration in 2026 | Big Blue Academy](https://bigblue.academy/en/the-death-of-prompt-engineering-and-its-ruthless-resurrection-navigating-ai-orchestration-in-2026-and-beyond)
- [Effective context engineering for AI agents | Anthropic](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)

### Jämförelser Människa vs AI
- [When AI Asks the Questions | Psychology Today](https://www.psychologytoday.com/us/blog/the-future-of-learning/202511/when-ai-asks-the-questions-human-beings-can-benefit)
- [Best Practices for Asking AI Questions | McChrystal Group](https://www.mcchrystalgroup.com/insights/detail/2024/01/02/the-art-of-asking-the-right-questions-in-the-age-of-artificial-intelligence)
- [Questioning A.I. | America Magazine](https://www.americamagazine.org/features/2025/08/06/artificial-intelligence-prompt-questions/)
