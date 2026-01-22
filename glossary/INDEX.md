# Ordlista: AI → Människa

> Alla översättningar samlade på ett ställe

## Snabbguide

| AI-Koncept | Mänsklig Motsvarighet | Kapitel |
|------------|----------------------|---------|
| Context window | Arbetsminne / närminne | 1 |
| Token | Lego-bit / tankeenhet | 2 |
| Softmax | Omvandla poäng till sannolikheter | 3 |
| Temperature | Riskvillighet i beslutsfattande | 3 |
| Hallucination | Konfabulering / falska minnen | 4 |
| Attention | Automatiska associationer | 5 |
| Query/Key/Value | Fråga, erbjudande, innehåll | 5 |
| Embedding | Mental karta / associationsnätverk | 6 |
| Backpropagation | Analysera vad som gick fel | 7 |
| Gradient descent | Korrigering i rätt riktning | 7 |
| Loss function | Mått på hur fel man hade | 7 |
| Training | Uppväxt / barndom | 7 |
| Weights | Frusna erfarenheter / muskelminne | 7 |
| Catastrophic forgetting | Glömska vid specialisering | 8 |
| Fine-tuning | Specialistutbildning | 8 |
| LoRA | Tillägg utan förändring | 8 |
| RLHF | Coachning / mentorskap | 8 |
| Prompt | Instruktioner till ny assistent | 9 |
| RAG | Bibliotekarie som slår upp | 10 |
| Transformer | Rundabordssamtal | 11 |
| Inference | Tentamen / tillämpa kunskap | 12 |
| Latent space | Ordlös förståelse | 13 |
| Overfitting | Tentaplugg utan förståelse | 14 |

<div style="page-break-after: always;"></div>

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

### I

**Inference** → *Tentamen / att tillämpa fryst kunskap*
Processen när en tränad modell används för att generera svar. All kunskap är fryst – modellen kan bara använda det den redan lärt sig under träningen. Som att skriva prov: pluggperioden är över, nu måste du klara dig med det du kan.
*Se kapitel 12*

### L

**Latent space** → *Ordlös förståelse / känslan innan orden*
Det dolda, komprimerade rum där komplexa koncept representeras innan de uttrycks. Som känslan du har när du vet exakt vad du menar men ännu inte hittat orden. I bildgenerering: rummet där ansikten kan glida mellan varandra.
*Se kapitel 13*

**LoRA (Low-Rank Adaptation)** → *Tillägg utan förändring*
En teknik för fine-tuning som lägger till små separata viktmatriser utan att röra originalvikterna. Som att lära sig ett nytt datasystem på jobbet utan att glömma sitt ursprungliga yrke.
*Se kapitel 8*

**Loss function** → *Mått på hur fel man hade*
Den matematiska funktionen som beräknar skillnaden mellan modellens förutsägelse och det korrekta svaret. Drivkraften bakom allt lärande – modellen strävar efter att minimera denna siffra.
*Se kapitel 7*

### O

**Overfitting** → *Tentaplugg utan förståelse*
När en modell lärt sig träningsdata för väl och memorerat specifika exempel istället för att förstå underliggande mönster. Som att plugga genom att memorera gamla tentafrågor ordagrant – du klarar exakt de frågor du sett, men faller ihop vid minsta variation.
*Se kapitel 14*

### P

**Prompt** → *Instruktioner till en ny assistent*
Den text du ger till en AI för att styra dess svar. Eftersom AI:n saknar gemensam bakgrund med dig måste du vara explicit med kontext, roll och förväntningar – precis som när du ger uppgifter till en ny medarbetare första dagen.
*Se kapitel 9*

### Q

**Query/Key/Value** → *Fråga, erbjudande, innehåll*
De tre komponenterna i attention-mekanismen. Query är vad ett ord "letar efter", Key är vad det "erbjuder", och Value är dess faktiska innehåll. Tillsammans bestämmer de hur ord kopplas ihop.
*Se kapitel 5*

### R

**RAG (Retrieval-Augmented Generation)** → *Bibliotekarie som slår upp innan svar*
En teknik där AI:n först söker i externa dokument innan den svarar, istället för att förlita sig enbart på sin träning. Som en bibliotekarie som inte försöker minnas allt, utan vet var man hittar rätt bok.
*Se kapitel 10*

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

**Transformer** → *Rundabordssamtal där alla hör alla*
Arkitekturen bakom moderna språkmodeller. Till skillnad från äldre modeller som läste ord i sekvens kan Transformern se alla ord samtidigt och låta dem kommunicera direkt med varandra – som ett konferensrum istället för en telefonkedja.
*Se kapitel 11*

**Training** → *Uppväxt / barndom*
Processen där modellen går från slumpmässiga vikter till en fungerande språkmodell genom att se miljontals exempel och iterativt justera sina parametrar. Avslutas innan modellen används – den lär sig sedan aldrig mer.
*Se kapitel 7*

### W

**Weights** → *Frusna erfarenheter / muskelminne*
De numeriska värdena som avgör modellens beteende. Alla lärdomar från träningen lagras i vikterna – ingen separat kunskapsbas, inga enskilda minnen, bara aggregerade statistiska mönster.
*Se kapitel 7*

## Koncept för framtida upplagor

| Koncept | Tänkbar motsvarighet |
|---------|---------------------|
| Batch | Inlärningsgrupp |
| Epoch | Repetitionscykel |
| Regularization | Självdisciplin |
| Dropout | Träna utan stödhjul |

<div style="page-break-after: always;"></div>
