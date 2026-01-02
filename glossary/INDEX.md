# Ordlista: AI → Människa

> Alla översättningar samlade på ett ställe

## Snabbguide

| AI-Koncept | Mänsklig Motsvarighet | Kapitel |
|------------|----------------------|---------|
| Context window | Arbetsminne / närminne | 1 |
| Token | Lego-bit / tankeenhet | 2 |
| Temperature | Riskvillighet i beslutsfattande | 3 |
| Hallucination | Konfabulering / falska minnen | 4 |
| Attention | Automatiska associationer | 5 |
| Embedding | Mental karta / associationsnätverk | 6 |
| Training | Uppväxt / barndom | 7 |
| Weights | Frusna erfarenheter / muskelminne | 7 |
| Fine-tuning | Specialistutbildning | 8 |
| Backpropagation | Analysera vad som gick fel | 7 |
| LoRA | Tillägg utan förändring | 8 |
| RLHF | Coachning / mentorskap | 8 |
| Loss function | Mått på hur fel man hade | 7 |
| Gradient descent | Korrigering i rätt riktning | 7 |
| Softmax | Omvandla poäng till sannolikheter | 3 |
| Query/Key/Value | Fråga, erbjudande, innehåll | 5 |
| Catastrophic forgetting | Glömska vid specialisering | 8 |

## Detaljerade Beskrivningar

### A

**Attention** → *Automatiska associationer / kontextmedvetet fokus*
Mekanismen som låter varje ord "titta på" alla andra ord och väga deras relevans. Som när din hjärna automatiskt kopplar ihop "hen" med rätt person i en mening utan att du tänker på det.
*Se kapitel 5*

### B

**Backpropagation** → *Spåra felet bakåt*
Algoritmen som beräknar hur varje viktparameter bidrog till modellens fel, genom att propagera felgradienten bakåt genom nätverket. Som att analysera ett misslyckat projekt och identifiera var i kedjan det gick snett.
*Se kapitel 7*

### C

**Catastrophic forgetting** → *Glömska vid överspecialisering*
När en modell som fine-tunas på ny data förlorar sin tidigare kunskap. Människor behåller oftast bred kunskap under specialisering; AI-modeller är mer sårbara för detta.
*Se kapitel 8*

**Context window** → *Arbetsminne / tillfälligt skrivbord*
Den begränsade mängd information modellen kan hålla i "huvudet" under en konversation. När fönstret fylls försvinner äldre information för alltid – till skillnad från människans arbetsminne som kan spara viktigt till långtidsminnet.
*Se kapitel 1*

### E

**Embedding** → *Mental karta / associationsnätverk*
En numerisk representation där ord placeras som punkter i ett matematiskt rum. Ord med liknande betydelse ligger nära varandra. Som hur dina begrepp lever i nätverk av associationer där "hund" automatiskt kopplas till "valp", "svans", "skälla".
*Se kapitel 6*

### F

**Fine-tuning** → *Specialistutbildning*
Att ta en allmänutbildad modell och träna den vidare på specifik data. Snabbare och billigare än grundträning, men med risk att förlora generalistkunskap. Som när en läkare specialiserar sig till kirurg.
*Se kapitel 8*

### G

**Gradient descent** → *Korrigering i rätt riktning*
Optimeringsalgoritmen som stegvis justerar vikterna i den riktning som minskar felet. Som att ta små steg nedför en kulle i dimma, alltid i den riktning som lutar mest neråt.
*Se kapitel 7*

### H

**Hallucination** → *Konfabulering / falska minnen*
När modellen genererar information som låter trovärdig men är påhittad. Bättre beskrivet som "konfabulering" – att fylla kunskapsluckor med trovärdiga men felaktiga svar, utan avsikt att bedra.
*Se kapitel 4*

### L

**LoRA (Low-Rank Adaptation)** → *Tillägg utan förändring*
En teknik för fine-tuning som lägger till små separata viktmatriser utan att röra originalvikterna. Som att lära sig ett nytt datasystem på jobbet utan att glömma sitt ursprungliga yrke.
*Se kapitel 8*

**Loss function** → *Mått på hur fel man hade*
Den matematiska funktionen som beräknar skillnaden mellan modellens förutsägelse och det korrekta svaret. Drivkraften bakom allt lärande – modellen strävar efter att minimera denna siffra.
*Se kapitel 7*

### Q

**Query/Key/Value** → *Fråga, erbjudande, innehåll*
De tre komponenterna i attention-mekanismen. Query är vad ett ord "letar efter", Key är vad det "erbjuder", och Value är dess faktiska innehåll. Tillsammans bestämmer de hur ord kopplas ihop.
*Se kapitel 5*

### R

**RLHF (Reinforcement Learning from Human Feedback)** → *Coachning / mentorskap*
En fine-tuning-metod där människor bedömer modellens svar och modellen lär sig producera svar som uppskattas. Mer som coaching än traditionell undervisning – fokus på *hur* man svarar, inte bara *vad*.
*Se kapitel 8*

### S

**Softmax** → *Omvandla poäng till sannolikheter*
Den matematiska funktionen som omvandlar modellens råa poäng till en sannolikhetsfördelning. Temperature påverkar hur "spetsig" eller "platt" denna fördelning blir.
*Se kapitel 3*

### T

**Temperature** → *Riskvillighet / modighet*
En parameter som styr hur försiktig eller vågad modellen är när den väljer nästa ord. Låg temperature = välj det säkra, höjd temperature = överväg även ovanliga alternativ. Som skillnaden mellan att ta croissanten och att prova den exotiska rätten.
*Se kapitel 3*

**Token** → *Lego-bit / språkbyggsten*
Den minsta enheten modellen arbetar med. Kan vara ett helt ord, en del av ett ord, eller ett enskilt tecken. Engelska ord kräver färre tokens än svenska; vissa språk drabbas hårt av denna bias.
*Se kapitel 2*

**Training** → *Uppväxt / barndom*
Processen där modellen går från slumpmässiga vikter till en fungerande språkmodell genom att se miljontals exempel och iterativt justera sina parametrar. Avslutas innan modellen används – den lär sig sedan aldrig mer.
*Se kapitel 7*

### W

**Weights** → *Frusna erfarenheter / muskelminne*
De numeriska värdena som avgör modellens beteende. Alla lärdomar från träningen lagras i vikterna – ingen separat kunskapsbas, inga enskilda minnen, bara aggregerade statistiska mönster.
*Se kapitel 7*

---

## Koncept som inte behandlas i boken (ännu)

| Koncept | Tänkbar motsvarighet |
|---------|---------------------|
| Transformer | Kontextmedveten tänkare |
| Inference | Tänkande / resonerande |
| Overfitting | Övertänkande / fixering |
| Batch | Inlärningsgrupp |
| Epoch | Repetitionscykel |
| Latent space | Det omedvetna |
| Prompt | Frågeställning / instruktion |
| RAG | Att slå upp innan man svarar |
