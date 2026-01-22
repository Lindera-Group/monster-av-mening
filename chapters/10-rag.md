# Bibliotekarien: Varför AI:n slår upp innan den svarar {.chapter}

<div class="chapter-opening">

<p class="chapter-number">Kapitel 10: RAG</p>

![](../assets/images/chapter-10.png)

<div class="chapter-ingress">

*RAG är som en bibliotekarie som slår upp i böcker innan hen svarar – istället för att gissa från minnet.*

</div>

</div>

<div style="page-break-after: always;"></div>

Du står vid informationsdisken på stadsbiblioteket. Framför dig sitter en kvinna i fyrtioårsåldern, glasögon uppskjutna i pannan, omgiven av bokhyllornas labyrint.

"Jag funderar på att installera bergvärme", säger du. "Vad kostar det? Hur djupt måste man borra? Behöver man tillstånd?"

Bibliotekarien kunde svara direkt från minnet. Hon har sett tusentals frågor genom åren, snappat upp kunskapsbitar från samtal och nyheter. Hon kunde säga: "Jag tror det kostar runt 150 000, och man borrar kanske 100 meter."

Men det gör hon inte.

Istället reser hon sig, går till datorn, söker i bibliotekskatalogen. Hon går till fackhyllan, plockar ner tre böcker om jordvärme och en om bygglov. Hon bläddrar snabbt, hittar relevanta kapitel, läser ett par stycken. Sen återvänder hon till dig.

"Enligt Energimyndighetens guide från förra året ligger kostnaden mellan 120 000 och 200 000 kronor beroende på djup och markförhållandena. Standarddjup är 80-200 meter. Och ja – i de flesta kommuner krävs anmälan till miljönämnden, ibland tillstånd om du bor nära vattentäkt. Vill du låna någon av de här?"

Välkommen till RAG – Retrieval-Augmented Generation.



## Bryggan till AI

På precis samma sätt kan en språkmodell arbeta. Istället för att svara enbart från det den lärdes under träningen – sitt "minne" – kan den först söka i externa databaser, hämta relevanta dokument, och använda dem för att formulera ett svar.

Det är skillnaden mellan att gissa och att slå upp.

När du chattar med en AI utan RAG svarar den från sina "minnesbilder" – träningsdatan som präglades in i modellens parametrar för månader eller år sedan. Ibland stämmer det. Ibland inte. Ibland hittar modellen på helt – det vi kallar hallucinationer.

Men en AI med RAG gör som bibliotekarien: den läser din fråga, söker i en kunskapsbas, hämtar relevanta textbitar, och formulerar sedan svaret med den hämtade informationen som grund.

Det är därför du kan prata med en AI om din organisations interna policyer, eller om nyheter från förra veckan – saker som omöjligt kunde finnas i modellens ursprungliga träning.



## Hur bibliotekarien arbetar

Låt oss följa processen mer noggrant, för den avslöjar någonting fascinerande.

### Steg 1: Förstå frågan

När du ställer din fråga om bergvärme gör bibliotekarien först en *tolkning*. Hon hänger inte upp sig på de exakta orden du använde – hon förstår att du söker information om geotermiska värmepumpar, installationskostnader och myndighetskrav.

På samma sätt omvandlar ett RAG-system din fråga till en "embedding" – en matematisk representation av *innebörden* i din fråga. Det är som att översätta från ord till tankemotiv.

### Steg 2: Katalogen

Bibliotekarien går inte till en slumpmässig hylla. Hon använder katalogen – ett system där varje bok är klassificerad efter ämne, nyckelord och innehåll.

RAG-systemet har en liknande "katalog" – en vektordatabas där varje textbit från kunskapsbasen har klassificerats och indexerats. När din fråga omvandlats till ett tankemotiv söker systemet efter textbitar med *liknande* tankemotiv.

Och här är det eleganta: det handlar inte om att hitta exakta ord. "Bergvärme" hittar dokument som handlar om "geotermisk energi" eller "jordvärmepump" – för innebörden pekar åt samma håll, även om orden är olika.

### Steg 3: Böcker från hyllan

Nu plockar bibliotekarien fram 3-7 böcker. Inte alla böcker i ämnet – bara de mest relevanta för just din fråga. Hon öppnar dem vid de kapitel som troligast innehåller svaret.

RAG-systemet gör samma sak: det hämtar de 3-10 textbitar (kallade "chunks") som är semantiskt närmast din fråga. Inte hela kunskapsbasen – det skulle vara som att lämpa hela biblioteket på skrivbordet.

### Steg 4: Formulera svaret

Med de öppna böckerna framför sig läser bibliotekarien relevanta avsnitt och sammanställer sedan ett svar. Hon kombinerar information från flera källor, strukturerar det för din fråga, och kan till och med peka på var informationen kommer från.

Språkmodellen med RAG gör samma sak: den tar din ursprungliga fråga, kombinerar den med de hämtade textbitarna, och genererar ett svar som är *grundat* i konkret information – inte bara associationer från träningen.



## Varför detta är revolutionerande

Tänk på hur annorlunda detta är från en vanlig språkmodell.

**Utan RAG**: "Jag tror att bergvärme kostar ungefär 150 000 kronor, och man borrar kanske 100 meter djupt." (Modellen gissar från otydliga minnesfragment.)

**Med RAG**: "Enligt Energimyndighetens rapport från 2024 ligger kostnaden mellan 120 000 och 200 000 kronor beroende på djup och markförhållanden. Borrdjupet är vanligtvis 80-200 meter." (Modellen citerar en specifik källa.)

Den första versionen *kan* vara rätt. Den andra versionen har *stöd* för att vara rätt.

Det är därför RAG används i:

- **Kundtjänst**: Chattbottar som svarar från företagens manualer och policyer
- **Juridik**: AI-assistenter som söker i lagtexter och prejudikat
- **Sjukvård**: System som konsulterar medicinsk forskningslitteratur
- **Privat kunskap**: Verktyg som svarar baserat på dina egna anteckningar



## När fine-tuning är fel val

Det finns ett annat sätt att ge en språkmodell ny kunskap: fine-tuning. Det är som att tvinga bibliotekarien att memorera hela bibliotekets innehåll utantill.

Det låter kraftfullt, men har allvarliga nackdelar:

**Kostsamt**: Varje gång kunskapen uppdateras måste hela inlärningen göras om.

**Stelhet**: Det som lärts in är svårt att "avlära" om det visar sig fel.

**Kapacitet**: Även en fantastisk bibliotekarie kan inte minnas miljoner sidor ordagrant.

RAG låter istället bibliotekarien arbeta som bibliotekarier faktiskt gör: med sin professionella kompetens, sin förmåga att tolka frågor och formulera svar – plus tillgång till ett välskött bibliotek.

Det är skillnaden mellan att försöka lagra allt i huvudet och att veta var man hittar saker.



## Var analogin brister

Men analogin har sina begränsningar.

### Hastighet

En mänsklig bibliotekarie behöver minuter, ibland timmar, för att hitta och läsa relevanta texter. Ett RAG-system gör samma sak på millisekunder. Den omedelbarheten är en del av varför tekniken är så användbar – den fungerar i realtid.

### Semantisk matchning vs verklig förståelse

När bibliotekarien söker förstår hon *verkligen* vad du frågar om. Hon kan göra kreativa kopplingar, tänka "hmm, den här frågan belyser jag om jag tittar på geologi-hyllan också".

RAG-systemet gör en matematisk jämförelse i ett vektorrum. Det "förstår" inte – det matchar. Det är elegant och effektivt, men saknar bibliotekariens djupa ämneskunskap och intuition.

### Källbedömning

En erfaren bibliotekarie har utvecklat ett ögonmått för källor. Hon vet vilka förlag som är pålitliga, vilka författare som är respekterade, vilka texter som är daterade. Hon kan säga: "Den här boken är från 2015 och mycket har hänt sedan dess."

RAG-systemet behandlar som standard alla dokument i sin databas lika. Det kan inte intuitivt bedöma trovärdighet – allt beror på vad som lagts in.

### Metakognition

Bibliotekarien vet när hon inte vet. Hon kan säga: "Det här är inte riktigt mitt område – du borde prata med en VVS-installatör."

RAG-system saknar den självinsikten. De kan hämta information som är tangentiellt relevant och ändå presentera ett självsäkert svar. De vet inte att de inte vet.



## Sammanfattning

**AI-koncept**: RAG (Retrieval-Augmented Generation)<br />
**Mänsklig motsvarighet**: Bibliotekarie som slår upp innan hen svarar<br />
**Kom ihåg**: En AI med RAG gissar inte från minnet – den söker, hämtar och grundar sitt svar i faktiska källor. Precis som en bra bibliotekarie.

<div style="page-break-after: always;"></div>
