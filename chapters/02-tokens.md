# Lego för språk: Hur AI:n stavar {.chapter}

<div class="chapter-opening">

<p class="chapter-number">Kapitel 2: Tokens</p>

![](../assets/images/chapter-02.png)

<div class="chapter-ingress">

*En token är som en Lego-bit – den minsta byggstenen som AI:n använder för att förstå och bygga text.*

</div>

</div>

<div style="page-break-after: always;"></div>

Du är fem år och lär dig läsa. Fingret följer bokstäverna: K-A-T-T. Fyra ljud. Ett ord. En katt.

Men vänta. Vad händer när ordet blir längre? "Kattunge"? Då är det inte lika självklart längre. Katt-unge? Ka-ttunge? Kat-tun-ge?

Vuxna tänker sällan på det, men vi delar automatiskt upp långa ord i hanterbara bitar. Vi *tokeniserar* språket utan att tänka på det.

AI:n gör samma sak – fast på sitt eget, märkliga sätt.



## Bryggan till AI

En språkmodell som GPT eller Claude läser inte text som du gör. Den ser inte ord. Den ser inte ens bokstäver, egentligen. Den ser *tokens* – bitar av text som den brutit ner för att kunna bearbeta.

Tänk på det som Lego. När du bygger ett Lego-hus ser du helheten: väggar, tak, dörr. Men allt är uppbyggt av små, standardiserade bitar. Vissa bitar är vanliga och används överallt. Andra är specialbitar för specifika situationer.

Tokens fungerar likadant. Vanliga ord som "the", "is" och "cat" blir en enda token – en hel Lego-bit. Men ovanliga eller sammansatta ord delas upp i mindre bitar som modellen redan känner igen.



## Hur uppdelningen går till

Låt oss ta ett konkret exempel. Ordet "otrolig" kan se ut så här för en AI:

**Människan ser**: otrolig

**AI:n ser**: ["o", "tro", "lig"] – tre tokens

Det beror på att AI:n under sin träning lärde sig att "tro" är en vanlig sekvens, "lig" är en vanlig ändelse, och "o" som prefix dyker upp ofta. Genom att kombinera dessa byggstenar kan den hantera ord den aldrig sett förut.

Tumregeln för engelska är att en token motsvarar ungefär tre fjärdedelar av ett ord. Men – och detta är viktigt – regeln gäller inte för alla språk.



## Språkets orättvisa

Här avslöjar tokens något obehagligt om hur AI byggs.

Engelska är extremt gynnat. De flesta språkmodeller tränas på enorma mängder engelsk text, och deras tokenisering är designad för engelska först.

Konsekvensen? Ett svenskt ord kan kräva dubbelt så många tokens som dess engelska motsvarighet. Tamil eller telugu kan kräva upp till *tio gånger* fler tokens för samma information.

Det är som om vissa språk måste bygga med mikro-Lego medan andra får stora, bekväma bitar.

I praktiken betyder detta:
- AI:n "tänker kortare" på andra språk än engelska (context window fylls snabbare)
- Det kostar mer att använda AI på vissa språk
- Kvaliteten kan bli sämre när varje ord kräver fler bearbetningssteg



## Varför inte bara använda ord?

En rimlig fråga: varför gör man det så komplicerat? Varför inte bara låta AI:n läsa ord för ord?

Svaret handlar om flexibilitet och effektivitet.

Om AI:n bara förstod hela ord skulle den stå handfallen inför nya ord. Första gången någon skriver "tweetstorm" eller "covidtrött" skulle modellen bara se: [OKÄNT ORD]. Men med tokens kan den bryta ner det: ["tweet", "storm"] eller ["covid", "trött"] – komponenter den känner igen.

Det är som skillnaden mellan att bara kunna rita färdiga figurer och att kunna teckna fritt. Med byggstenar blir du kreativ.



## Den matematiska hemligheten

Bakom kulisserna händer något fascinerande. Varje token omvandlas till en lång rad siffror – en matematisk position i ett enormt rum av betydelser. Ordet "kung" kanske blir: [0.23, -0.45, 0.87, 0.12, ...] och så vidare i hundratals dimensioner.

AI:n "läser" aldrig text. Den navigerar i ett matematiskt landskap där liknande betydelser ligger nära varandra.

Men det är en annan historia. Det vi behöver förstå här är att tokens är *porten in* – det första steget där mänskligt språk översätts till något en dator kan arbeta med.



## Varför det spelar roll

Förståelsen av tokens förklarar flera saker som annars verkar mystiska:

**"Varför kostar långa svar mer?"**
AI-tjänster tar ofta betalt per token. Fler tokens = högre kostnad.

**"Varför är AI sämre på svenska än engelska?"**
Svenska kräver fler tokens för samma innehåll, vilket gör bearbetningen mindre effektiv.

**"Varför har AI svårt med konstiga stavningar?"**
"Heeeeej" blir många fler tokens än "Hej" – varje extra 'e' kan bli en separat token.

**"Varför kan AI ibland inte räkna bokstäver?"**
När du frågar "hur många r finns i 'jordgubbe'?" ser AI:n inte bokstäver – den ser tokens. Och "jordgubbe" har brutits ner till bitar som inte nödvändigtvis följer bokstavsgränserna.



## Analogins gränser

Det finns en viktig skillnad mellan Lego och tokens.

Lego-bitar är designade med avsikt. Någon har tänkt: "Den här biten ska vara ett hjul, den här ett fönster."

Tokens är statistiska. De uppstår ur mönster i träningsdatan – vilka teckenföljder som förekommer ofta tillsammans. Det finns ingen djupare logik, ingen förståelse för vad bitarna "betyder". Det är ren matematik.

En token kan vara ett helt ord, halva ett ord, eller en meningslös sekvens av tecken – allt beror på vad som var statistiskt effektivt att lära sig.

Det är som om Lego-bitarna designat sig själva baserat på vad barn oftast bygger, utan att någon människa fattade besluten.



## Slutord

Nästa gång du chattar med en AI, tänk på att dina ord passerar genom en märklig förvandling innan de når fram.

"Kan du hjälpa mig förstå kvantfysik?"

Blir kanske: ["Kan", " du", " hjälp", "a", " mig", " för", "stå", " kvant", "fys", "ik", "?"]

Varje bit en Lego-kloss. Varje kloss en position i ett matematiskt universum. Och någonstans i det universumet försöker AI:n lista ut vad du menar.

Det är inte magi. Men det är inte heller riktigt läsning.

Det är något helt nytt.



## Sammanfattning

**AI-koncept**: Tokens<br />
**Mänsklig motsvarighet**: Lego-bitar / stavelser<br />
**Kom ihåg**: AI:n läser inte ord – den bygger med bitar av text, och vissa språk får mindre bitar än andra.

<div style="page-break-after: always;"></div>
