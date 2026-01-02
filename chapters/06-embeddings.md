# Tankens landskap: Där ord blir platser

![Kapitel 6: Embeddings](../assets/images/chapter-06.png)

> Embeddings är som en mental karta där ord ligger nära varandra om de betyder liknande saker – precis som städer i samma land ligger nära på en karta.

---

Vad är en hund?

Du kan ge en definition: "Ett fyrfota däggdjur av arten Canis familiaris, domesticerat av människan för tusentals år sedan."

Men det är inte så du *egentligen* förstår vad en hund är.

I ditt huvud existerar "hund" i ett nätverk av associationer. Hund kopplar till valp, svans, skäll, koppel, lojal, vän, matte, tass, hundpark, Ben, Lansen, den där golden retrievern som grannarna har...

Varje associationstråd har olika styrka. "Valp" är nära. "Däggdjur" är längre bort, mer abstrakt. "Kanarie" är ännu längre – men fortfarande närmare än "gardin".

Dina begrepp lever inte som isolerade definitioner. De lever i relation till varandra, i ett mentalt landskap.

AI:n organiserar ord på exakt samma sätt. Det kallas *embeddings*.

---

## Bryggan till AI

En språkmodell ser inte ord. Den ser siffror.

Varje ord (eller token) omvandlas till en lång rad tal – kanske 1000 siffror i följd. Denna talrad kallas en *vektor*, och vektorn är ordets *embedding*.

Det fascinerande är hur dessa vektorer organiseras.

Ord med liknande betydelse får liknande vektorer. De hamnar nära varandra i det matematiska rummet. "Hund" och "valp" får vektorer som pekar i ungefär samma riktning. "Hund" och "demokrati" pekar åt helt olika håll.

Det är som en karta. Stockholm och Uppsala ligger nära varandra på kartan för att de ligger nära i verkligheten. På samma sätt ligger "kung" och "drottning" nära varandra i embedding-rummet för att de har liknande betydelse.

---

## Hur det fungerar

Under träning lär sig modellen att placera ord i detta matematiska rum.

Principen är enkel: ord som ofta förekommer i samma sammanhang bör ligga nära varandra.

"Katt" förekommer ofta nära "mjuk", "tassar", "mjölk", "sover". "Hund" förekommer nära "skäller", "tassar", "svans", "springer".

Notera att "tassar" förekommer nära båda. Så i embedding-rummet kommer "katt" och "hund" att ligga relativt nära varandra – båda nära "tassar" – trots att de är olika djur.

Det är just denna struktur som gör embeddings så kraftfulla.

---

## Ordets matematik

Det finns något nästan magiskt med embeddings: betydelse kan uttryckas som matematik.

Det klassiska exemplet:

**kung - man + kvinna ≈ drottning**

Det stämmer faktiskt. Om du tar vektorn för "kung", subtraherar vektorn för "man", och adderar vektorn för "kvinna", hamnar du nära vektorn för "drottning".

Liknande relationer dyker upp överallt:

- Paris - Frankrike + Sverige ≈ Stockholm
- Gå - gick + springa ≈ sprang
- Stor - större + liten ≈ mindre

Modellen har inte lärts att dessa relationer finns. Den har upptäckt dem själv, ur mönstren i hur ord används.

---

## Mentala kartor

Neurologisk forskning visar att mänskliga hjärnor organiserar kunskap på häpnadsväckande liknande sätt.

Hippocampus och omgivande hjärnområden använder "kognitiva kartor" – mentala representationer där begrepp har positioner i förhållande till varandra. Vi navigerar genom idéer som om de vore platser.

När du försöker komma på ett ord ligger det på tungspetsen – "det börjar på K, det har något med vatten att göra..." Du letar i landskapet, navigerar genom associationer, tills du hittar: "Kanal!"

AI:ns embeddings är en matematisk version av samma princip.

---

## Vad embeddings inte förstår

Här måste vi vara ärliga med analogins gränser.

Dina associationer är förankrade i upplevelser. Du vet vad en hund är för att du har klappat hundar, blivit slickad i ansiktet, hört dem skälla på natten. Ditt begrepp "hund" är kopplat till minnen, känslor, sinnesintryck.

AI:ns embedding för "hund" är bara statistik. Den vet att "hund" ofta förekommer nära "skäller" och "svans" – men den har aldrig hört ett skall eller sett en svans.

Det är som skillnaden mellan att ha en karta och att ha rest genom landskapet. Kartan kan visa var städerna ligger – men den kan inte berätta hur det känns att vara i Stockholm.

---

## Varför det spelar roll

Embeddings är grunden för nästan allt som moderna AI-system gör.

**Semantisk sökning**: När du googlar "hur lagar man trasig cykel" hittar sökmotorn sidor om "cykelreparation" även om de inte innehåller exakt de orden – för embeddings visar att begreppen ligger nära.

**RAG (Retrieval-Augmented Generation)**: Moderna AI-system hämtar relevant information från databaser genom att jämföra embeddings. "Vilken fråga liknar mest det jag har information om?"

**Rekommendationer**: Netflix och Spotify använder embeddings för att hitta filmer och låtar som "liknar" det du gillat förut.

---

## Det märkliga med dimensioner

Ett ord som "hund" kan representeras i kanske 1000 dimensioner.

Vad betyder det? Inte att det finns 1000 aspekter av hundar som vi kan lista. Dimensionerna har ingen enkel mänsklig betydelse.

Men kombinationen av alla dimensioner fångar något som *fungerar* – den fångar mönstren i hur ord används, relationer mellan begrepp, associativa kopplingar.

Det är som färger. En färg kan beskrivas med tre tal (röd, grön, blå) – men inget av talen ensamt beskriver färgen. Det är kombinationen som skapar upplevelsen. Embedding-dimensioner fungerar likadant.

---

## Likheten och begränsningen

Embedding-rummet är häpnadsväckande likt våra mentala associationsnätverk i sin struktur.

Men det saknar förankring. Det är ett karta utan landskap, ett nätverk utan upplevelser, relationer utan innehåll.

AI:n vet att "2% avkastning" och "20% avkastning" har nästan identiska embeddings – orden är ju desamma förutom siffrorna. Men den förstår inte den enorma skillnaden i betydelse för dig om det gäller dina pensionspengar.

Matematisk närhet är inte samma sak som mänsklig förståelse.

---

## Slutord

Nästa gång du försöker komma ihåg ett ord och det ligger på tungspetsen – nära men oåtkomligt – tänk på att du navigerar i ett landskap.

Dina begrepp är inte lagda i separata lådor. De existerar i relation till varandra, i ett nätverk av associationer, i ett mentalt rum där liknande saker ligger nära.

AI:n har byggt sin egen version av detta rum, ur miljontals texter, utan att någonsin uppleva det som orden beskriver.

Strukturen är häpnadsväckande lik. Resan dit var fundamentalt annorlunda.

---

**Sammanfattning**
- **AI-koncept**: Embeddings
- **Mänsklig motsvarighet**: Mentala associationsnätverk / kognitiva kartor
- **Kom ihåg**: Embeddings placerar ord som punkter i ett matematiskt rum där närhet motsvarar likhet i betydelse – precis som dina begrepp lever i nätverk av associationer.
