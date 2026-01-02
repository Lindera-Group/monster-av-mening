# Fine-tuning

## Teknisk Definition

Fine-tuning är processen att anpassa en förtränad modell för specifika uppgifter genom ytterligare träning på en mindre dataset. Det är transfer learning där kunskap från ursprunglig träning återanvänds och specialiseras.

**Nyckelskillnader:**

| Aspekt | Pre-training | Fine-tuning |
|--------|--------------|-------------|
| Starttillstånd | Slumpmässiga vikter | Förtränade vikter |
| Dataset | Gigantisk (TB data) | Mindre (MB-GB) |
| Kostnad | Miljoner dollar | Hundratals-tusentals dollar |
| Tid | Veckor-månader | Timmar-dagar |
| Syfte | Allmän kunskap | Specialiserad kunskap |

## Hur Det Fungerar

### Grundläggande Process

1. **Ladda förtränade vikter**: Starta med en modell som redan kan grundläggande uppgifter
2. **Välja vilka lager som ska justeras**:
   - **Full fine-tuning**: Alla vikter uppdateras
   - **Partial fine-tuning**: Endast senare lager tränas, tidiga lager "fryses"
3. **Träna med lägre learning rate**: Typiskt 10x lägre för att undvika att "förstöra" befintlig kunskap

### LoRA (Low-Rank Adaptation)

Modern parameter-effektiv fine-tuning:
- Fryser alla originalvikter
- Lägger till små "adapter"-matriser som tränas
- Reducerar träningsbara parametrar med 10,000x
- Kan "switchas" mellan olika specialiseringar

## Praktisk Användning

### Typer av Fine-tuning

**1. Instruction Tuning**: Träna modellen att följa instruktioner i fråga-svar-format

**2. RLHF (Reinforcement Learning from Human Feedback)**:
- Träna en "reward model" baserad på mänskliga preferenser
- Optimera för hjälpsamma, vänliga, säkra svar
- Exempel: GPT-3 → InstructGPT → ChatGPT

**3. Domänanpassning**: Specialisera för specifik bransch (medicin, juridik, kod)

### När Ska Man Fine-tunea?

**Använd INTE fine-tuning om**: Prompt engineering eller RAG räcker

**Använd fine-tuning när**: Du behöver konsistent stil/format eller specialisering för nischdomän

**Rekommenderad progression**: Prompt engineering → RAG → Fine-tuning (sista utväg)

## Vanliga Missförstånd

### "Fine-tuning gör modellen smartare"

**Sanning**: Fine-tuning specialiserar men ökar inte grundläggande förmåga att resonera. En fine-tuned GPT-3.5 blir inte "smartare" – den blir bättre på specifika uppgifter men kan bli sämre på andra.

### "Fine-tuning är alltid bättre än prompting"

**Sanning**: Moderna LLMs är så kapabla att prompting + RAG ofta räcker. Fine-tuning introducerar komplexitet och risk för **catastrophic forgetting**.

## Nyckelinsikter för Översättning

### Koppling till Mänsklig Specialisering

Fine-tuning liknar **vidareutbildning eller specialisering**:

**Pre-training = Grundutbildning**
- Lära sig läsa, skriva, allmänbildning
- Kostar mycket tid och resurser
- Ger grundläggande kompetens

**Fine-tuning = Specialistutbildning**
- Läkarstudent → Kirurg
- Jurist → Skattespecialist
- Bygger på befintlig kunskap
- Tar kortare tid, kräver mindre data

### Viktiga Analogiaspekter

**1. Bygger på befintlig kunskap**: Du lär inte en kirurg att läsa från början

**2. Tar mycket kortare tid**: Specialistutbildning 1-5 år vs 20 år total utbildning

**3. Risk för att "glömma"**: En läkare som bara tränar kirurgi kan glömma allmänmedicin (catastrophic forgetting)

**4. Olika "djup"**:
- Full fine-tuning = Omskola helt (läkare → jurist)
- Partial fine-tuning = Specialisera inom fält (läkare → kardiolog)
- LoRA = Lära sig "overlay" (lära sig nytt system på sjukhuset – det gamla är kvar under)

### RLHF-specifik Analogi

**RLHF = Coaching/mentorskap med feedback**
- Inte bara "lära sig fakta" utan "lära sig att agera rätt"
- Som att lära kundtjänst: inte bara produktkunskap utan hur man pratar med kunder
- Människor rangordnar svar: "Detta var mer hjälpsamt"
- Modellen justerar beteende för att maximera "hjälpsamhet"

### Begränsningar av Analogin

1. **Människor multi-taskar bättre**: En kirurg glömmer inte svenska. En fine-tuned modell kan glömma grundläggande förmågor.

2. **Människor lär från färre exempel**: En människa kan lära sig från ett fall. Fine-tuning behöver hundratals-tusentals exempel.

3. **Människor har episodiskt minne**: Vi kommer ihåg specifika erfarenheter. Modeller "smälter samman" allt till vikter.

## Källor

- What is Fine-Tuning? (IBM)
- LoRA (Hugging Face Documentation)
- Illustrating RLHF (Hugging Face)
- 5 Problems Encountered Fine-Tuning LLMs (MachineLearningMastery)
- Best practices for fine-tuning Claude 3 Haiku (AWS)
