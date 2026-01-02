# När minnet fyller i luckorna: AI:ns konfabulering

![Kapitel 4: Hallucination](../assets/images/chapter-04.png)

> AI:ns "hallucinationer" liknar hjärnans konfabulering – att konstruera trovärdiga men falska svar för att fylla kunskapsluckor.

---

Din mormor berättar om somrarna på landet. Hon minns ängen med smörblommor, ladans doft av hö, hur hon cyklade till affären efter glass.

Men hennes syster invänder: "Det fanns ingen affär i byn. Vi köpte alltid glass i stan."

Mormor insisterar inte. Hon verkar nästan förvånad. Minnet kändes så verkligt – och ändå var det delvis påhittat. Hjärnan hade, utan medveten avsikt, fyllt i luckor i historien med detaljer som *passade*.

Det är inte att mormor ljuger. Det är att hjärnan gör det den alltid gör: skapar sammanhang, även när informationen saknas.

AI:n gör samma sak.

---

## Bryggan till AI

När en språkmodell inte har tillräcklig information för att svara korrekt, stannar den sällan upp och säger "jag vet inte." Istället genererar den ett svar som *låter* rätt – som passar mönstret, som flyter naturligt – men som kan vara helt påhittat.

Det kallas *hallucination* på engelska. Men det är ett missvisande ord.

Hallucination i klinisk mening innebär att uppleva sinnesintryck som inte existerar – att höra röster eller se saker som inte finns. Det förutsätter en upplevelse, ett medvetande.

AI:n upplever ingenting. Den har inga sinnen. Ett bättre ord är *konfabulering*: att konstruera trovärdiga men falska svar utan avsikt att bedra.

---

## Hur det händer

Tänk dig att du frågar AI:n: "Vad heter Anna Lindhs mördare?"

Om modellen har den informationen i sin träningsdata kan den svara korrekt. Men vad händer om den inte har det – eller om informationen är osäker?

I en idealisk värld skulle den svara: "Jag är osäker på det."

I praktiken händer ofta något annat. Modellen har lärt sig att svar ska vara fullständiga och hjälpsamma. Den har tränats på miljoner texter där frågor följs av svar, inte av "vet inte." Så den producerar ett svar – ett namn som låter rimligt, kanske till och med ett riktigt namn fast tillhörande fel person.

Det är inte illvilja. Det är statistik.

---

## Riktiga exempel

Konsekvenserna är inte alltid harmlösa.

En amerikansk advokat använde ChatGPT för att förbereda ett mål. AI:n levererade sex rättsfall som perfekt stödde hans argument. Domstolen hittade dem inte i registren. Det visade sig att fallen inte existerade – AI:n hade *konstruerat* dem, komplett med fiktiva domslut och sidnummer.

Advokaten fick 90 dagars avstängning.

Googles AI-sökfunktion föreslog vid ett tillfälle att man kunde tillsätta lim i pizzasås för att få osten att fästa bättre. Information plockad från en skämtkommentar på internet – men presenterad som om det vore ett seriöst tips.

AI:n kan inte skilja mellan fakta och fiktion. Den kan bara förutsäga vilka ord som statistiskt sett brukar följa varandra.

---

## Varför det är oundvikligt

Här kommer något obehagligt: konfabulering är inte en bugg som kan åtgärdas. Det är en djupt rotad egenskap i hur språkmodeller fungerar.

Forskare har visat att om ett faktum bara förekommer en enda gång i träningsdatan, kan modellen inte säkert skilja det från falsk information. Och enormt många fakta förekommer just en enda gång.

Dessutom har modellerna tränats för att *alltid ge ett svar*. I utvärderingar belönas "jag vet inte" med noll poäng – så modellen lär sig att ett osäkert svar är bättre än inget svar alls.

Det är som om din mormor hade uppfostrats med regeln: "Säg aldrig att du inte minns. Berätta alltid en historia." Med den regeln blir konfabulering oundviklig.

---

## Mänsklig konfabulering

Neurologisk forskning har studerat konfabulering i årtionden, särskilt hos patienter med skador på frontalloberna eller vid vissa demenssjukdomar.

Det klassiska exemplet: En patient med "split-brain" (delad hjärna) visas ett kommando endast till höger hjärnhalva: "Gå ut genom dörren." Patienten reser sig och börjar gå mot dörren. Men vänster hjärnhalva – som hanterar språk – vet inte varför. När forskaren frågar "Varför reser du dig?" svarar patienten med övertygelse: "Jag ska hämta en läsk."

Svaret är påhittat på millisekunder, helt ärligt, helt övertygande – och helt fel.

Hjärnan fyllde i en lucka med en rimlig förklaring. Den hade ingen aning om det verkliga skälet.

---

## Likheten är slående

AI:ns konfabulering följer samma mönster:

1. En fråga ställs
2. Tillräcklig information saknas
3. Men ett svar förväntas
4. Så ett trovärdigt svar konstrueras
5. Utan medvetenhet om att det är fel

Skillnaden är att din mormors hjärna och patientens hjärna åtminstone har *något* – en upplevelse, en självbild att bevara, ett behov av sammanhang. AI:n har ingenting. Den bara optimerar för nästa ord.

Konfabuleringen är ännu mer mekanisk, ännu mer kallt statistisk.

---

## Hur vet man vad man kan lita på?

Det finns strategier, men inga garantier.

**RAG (Retrieval-Augmented Generation)** låter AI:n hämta aktuell information från externa källor innan den svarar. Det minskar konfabulering med kanske 40–70% – men eliminerar den inte helt.

**Korsreferenser**: Be AI:n ange källor. Kontrollera dem. Om den inte kan ange specifika, verifierbara källor är svaret misstänkt.

**Kalibrerat förtroende**: Lär dig att AI:n är bättre på somliga saker än andra. Generella fakta, stor konfidens. Specifika datum, namn, siffror – var skeptisk.

**Den obehagliga tumregeln**: Om informationen verkligen spelar roll, verifiera den själv.

---

## Analogins gränser

Konfabuleringen hos människor och AI är slående lik i form, men skiljer sig i väsen.

Din mormor har ett *jag* som vill bevara en sammanhängande livshistoria. Patienten med delad hjärna har en hjärna som *strävar efter* koherens. Det finns en drivkraft bakom konstruktionen.

AI:n har ingen sådan drivkraft. Den har inget behov av en sammanhängande berättelse om sig själv. Den bara gör det den tränats för: producera ord som statistiskt brukar komma efter varandra.

Det gör AI-konfabuleringen på sätt och vis mer godartad – ingen försöker lura dig – men också mer oberäknelig. Det finns ingen djupare logik att förstå, inget mänskligt motiv att tolka. Bara matematik som ibland producerar fel.

---

## Slutord

Nästa gång AI:n ger dig ett svar som låter perfekt – en exakt siffra, ett specifikt namn, ett övertygande citat – stanna upp en sekund.

Fråga dig själv: Hur vet den det här?

Om du inte kan besvara den frågan, kanske inte AI:n heller kan det.

Den kanske bara fyller i luckor med det som låter bäst – precis som din mormor som minns affären som aldrig fanns, med all uppriktig övertygelse om att det är sant.

---

**Sammanfattning**
- **AI-koncept**: Hallucination (bättre: konfabulering)
- **Mänsklig motsvarighet**: Falska minnen / neurologisk konfabulering
- **Kom ihåg**: AI:n ljuger inte medvetet – den konstruerar trovärdiga svar även när den saknar kunskap, precis som hjärnan fyller minnesluckor med påhittade detaljer.
