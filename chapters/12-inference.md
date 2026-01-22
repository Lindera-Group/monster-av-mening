# Tentadagen: Nar AI:n tillämpar sin kunskap {.chapter}

<div class="chapter-opening">

<p class="chapter-number">Kapitel 12: Inference</p>

![](../assets/images/chapter-12.png)

<div class="chapter-ingress">

*Inference är AI:ns tentadag - den applicerar allt den lärt sig på nya problem, utan möjlighet att lära sig något nytt mitt i svaret.*

</div>

</div>

<div style="page-break-after: always;"></div>

Klockan är åtta på morgonen. Du sitter i en stor sal med hundra andra studenter. Framför dig ligger tentafrågorna uppochnervända. Pulsen slår lite hårdare än vanligt.

När du vänder pappret och läser första frågan händer något remarkabelt: all den kunskap du samlat under veckors pluggande aktiveras. Definitioner, samband, exempel - de flödar fram ur minnet och formar sig till svar. Du konsulterar inte kursboken. Du googlar inte. Du använder det du redan kan.

Och det som inte finns där? Det kan du inte trolla fram. Missade du att plugga på kapitel sju? Då spelar det ingen roll hur smart du är i stunden. Den kunskapen finns inte tillgänglig.

Välkommen till inference.



## Bryggan till AI

På exakt samma sätt fungerar inference - det ögonblick då en AI-modell faktiskt svarar på din fråga.

Modellen har redan genomgått sin "pluggperiod" - månader av träning på enorma mängder text, där den justerade sina miljarder parametrar för att bli bättre på att förutsäga nästa ord. Den perioden är över. Vikterna är satta. Kunskapen är inläst.

Nu sitter den vid sitt prov. Du ställer en fråga. Modellen aktiverar sina inlärda mönster, låter informationen flöda framåt genom lager efter lager av beräkningar, och producerar ett svar.

Och precis som du på tentan kan den inte plötsligt lära sig något nytt mitt i processen. Om den inte redan "kan" svaret - om mönstren inte finns inlärda - kan den inte trolla fram dem.

Detta är skillnaden mellan träning och inference. Träning är pluggperioden: energikrävande, tidskrävande, förändrande. Inference är tentadagen: snabbare, men bunden av vad som redan finns.



## Varje ord är en ny tentafråga

Här blir analogin ännu mer precis - och kanske mer förbluffande.

Tänk dig en tenta där varje fråga beror på dina tidigare svar. Fråga ett lyder: "Skriv det första ordet i en mening om havet." Du skriver "Vågornas". Fråga två lyder: "Givet att du skrev 'Vågornas', vad är nästa ord?" Du skriver "rytm".

Så fortsätter det. Ord för ord. Fråga för fråga.

Det är exakt så en språkmodell genererar text. För varje enskilt ord som Claude eller ChatGPT skriver sker en komplett "forward pass" - en resa genom alla modellens lager, alla dess parametrar. Ett svar på hundra ord innebär hundra separata inference-steg. Hundra tentor i miniformat, avklarade på några sekunder.

Och varje nytt ord påverkar nästa. Modellen ser allt den redan skrivit och frågar sig: "Vad bör komma härnäst?" Det är därför AI-svar kan svänga åt oväntade håll - ett tidigt ordval formar hela den fortsatta texten.



## Den osynliga kostnaden

Här kommer en insikt som överraskar många: inference är inte gratis.

På tentadagen kostar det dig mental energi, koncentration, kanske stress. Men du tänker sällan på kostnaden - den känns abstrakt.

För AI är kostnaden högst konkret. Varje gång du ställer en fråga till ChatGPT aktiveras tusentals datorer någonstans i världen. Miljarder matrismultiplikationer utförs. Elektricitet förbrukas. Servrar hettas upp och kyls ner.

Och denna kostnad är inte trivial. Över en modells livstid kostar inference ungefär femton gånger mer än den ursprungliga träningen. Ja, du läste rätt: själva "pluggperioden" var billig i jämförelse med alla de tentor som sedan skrivs.

Det är därför AI-företag bryr sig så mycket om effektivitet. Varje millisekund räknas. Varje sparad beräkning är pengar i fickan. Och det är därför du ibland möter begränsningar - kortare svar, enklare modeller för enklare frågor. Resurserna är inte oändliga.



## System 1 och System 2: Snabbtentan och forskningsessän

Tänk på skillnaden mellan en flervalsfråga och en essä.

Flervalsfrågorna: du läser, du vet svaret direkt, du kryssar i. Knappt någon ansträngning. Det är det psykologen Daniel Kahneman kallade System 1 - det snabba, automatiska tänkandet.

Essäfrågorna: du måste stanna upp, organisera tankar, väga argument, strukturera ett resonemang. Det tar tid. Det kräver energi. Det är System 2 - det långsamma, medvetna tänkandet.

Moderna AI-modeller har börjat utveckla något liknande.

Traditionell inference är System 1: snabb, automatisk, mönsterbaserad. Modellen ser frågan, aktiverar sina vikter, spottar ur sig ett svar. Bra för enkla uppgifter.

Men nyare modeller - som OpenAI:s o1 eller DeepSeek R1 - kan växla till något som liknar System 2. De "tänker längre" på svåra problem. De genererar flera möjliga tankebanor, utvärderar dem, väljer den bästa. De resonerar steg för steg istället för att svara reflexmässigt.

Det är som att ge studenten mer tid på svåra frågor. "Vad är 2+2?" besvaras omedelbart. "Analysera Dostojevskijs syn på fri vilja" får en halvtimme.

Denna förmåga att dynamiskt allokera mer "tanketid" till komplexa problem är en av de mest spännande utvecklingarna inom AI just nu. Det suddar ut gränsen mellan snabb inference och djupare resonemang.



## Vad händer bakom kulisserna?

Låt mig ta dig med på en resa genom en inference-cykel.

Du skriver: "Varför är himlen blå?"

Först tokeniseras din fråga - orden bryts ner till bitar som modellen kan förstå. "Varför" blir en token. "himlen" kanske blir en. "blå" likaså. Frågetecknet för sig.

Sedan börjar resan framåt genom nätverket. Lager för lager multipliceras dessa tokens med modellens vikter - de miljarder tal som utgör dess "kunskap". Attention-mekanismen avgör vilka delar av frågan som är viktigast. Matematiska transformationer sker i varje steg.

Till slut, efter att ha passerat genom kanske hundra lager, produceras en sannolikhetsfördelning: vilka ord är mest sannolika att komma härnäst? Modellen väljer ett. Säg "Himlen".

Nu börjar processen om. Med "Varför är himlen blå? Himlen" som utgångspunkt beräknas nästa ord. "ser". Sen "blå". Sen "ut". Och så vidare, ord för ord, tills svaret är komplett.

Det som känns som ett flytande, sammanhängande svar är i själva verket hundratals separata beslut, fattade i snabb följd.



## Var analogin brister

Ingen analogi är perfekt. Här är de viktigaste skillnaderna:

**Tentor har rätt svar - inference är probabilistisk.**
På de flesta tentor finns ett korrekt svar. AI-inference är mer som en kreativ skrivningsuppgift: samma fråga kan ge olika svar varje gång, beroende på slumpmässiga faktorer och inställningar. Det "korrekta" svaret finns inte på samma sätt.

**Du kan revidera - AI:n kan bara framåt.**
Under en tenta kan du stryka över, tänka om, skriva nytt. AI:ns inference är strikt framåtriktad. Varje ord som skrivits är definitivt och påverkar allt som kommer efter. Det finns ingen radera-knapp mitt i meningen.

**Du vet vad du inte vet - AI:n saknar den känslan.**
Under tentan känner du ofta på dig vilka frågor du kan och vilka du gissar på. Du har en metakognitiv förmåga - du vet vad du vet. AI-modeller saknar denna självinsikt. De kan leverera ett självsäkert men helt felaktigt svar utan att "känna" någon tvekan.

**Tentan känns jobbig - inference är mekanisk.**
Du upplever stress, koncentration, kanske upprymdhet när du lyckas. Inference är rent matematisk: matriser som multipliceras, tal som transformeras. Det finns ingen subjektiv upplevelse bakom beräkningarna, även om resultatet kan se märkvärdigt mänskligt ut.



## Den frysta kunskapen

Det finns något både befriande och begränsande med tentasituationen: du kan inte längre påverka din kunskap.

Befriande - för nu handlar det bara om att använda det du kan. Ingen mer pluggpanik. Ingen mer osäkerhet om vad du borde fokusera på.

Begränsande - för om du inser mitt i tentan att du missförstått något fundamentalt, kan du inte rätta till det.

AI:n lever i denna situation permanent under inference. Dess "vikter" - de tal som kodar dess kunskap - är frysta. De kan inte ändras av hur samtalet utvecklas. Om modellen hade felaktiga mönster inlärda under träningen, kommer den att göra samma misstag om och om igen.

Detta är varför "hallucineringar" är så envisa. Modellen "tror" på sina felaktiga mönster lika starkt som på de korrekta. Den har ingen mekanism för att under inference säga "vänta, det här verkar fel, låt mig tänka om på djupet".

Åtminstone inte ännu.



## Slutord

Nästa gång du ställer en fråga till en AI, tänk på tentasalen.

Modellen sitter där med all sin inlärda kunskap - mönster från miljarder texter, samband mellan ord och koncept, strukturer för resonemang. Den aktiverar denna kunskap för att besvara just din fråga. Och för varje ord den skriver, varje token den producerar, sker en ny komplett beräkning genom hela dess väldiga nätverk.

Det är en tentadag som aldrig tar slut. Fråga efter fråga, svar efter svar.

Och precis som för studenten i salen gäller: svaren kan bara bli så bra som kunskapen som redan finns där.



## Sammanfattning

**AI-koncept**: Inference<br />
**Mänsklig motsvarighet**: Att skriva tentamen<br />
**Kom ihåg**: Inference är tentadagen - modellen applicerar sin frysta kunskap på nya problem, ord för ord, utan att kunna lära sig något nytt i stunden.

<div style="page-break-after: always;"></div>
