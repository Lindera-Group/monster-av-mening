# Arbetsminnet: Varför AI:n "glömmer"

![Kapitel 1: Context Window](../assets/images/chapter-01.png)

> En AI:s context window är som ditt arbetsminne – begränsat, flyktigt, och ibland frustrerande litet.

---

Du sitter i ett viktigt möte. Din chef radar upp punkter: budgeten för nästa kvartal, den nya rekryteringen, projektdeadlines, feedbacken från kunden. Du nickar, antecknar, försöker hänga med.

Sen händer det. Någon frågar: "Vad sa Marcus om leveransdatumet för fas två?"

Du vet att det nämndes. Du vet att det var viktigt. Men orden har redan glidit bort, ersatta av allt annat som sagts sedan dess. Det är inte att du inte lyssnade – det är att ditt arbetsminne, hjärnans tillfälliga skrivbord, bara rymmer så mycket.

Välkommen till context window.

---

## Bryggan till AI

På samma sätt fungerar en språkmodells "context window" – dess version av arbetsminnet. Precis som du i det där mötet har AI:n en strikt gräns för hur mycket den kan hålla i "huvudet" samtidigt.

När du chattar med Claude eller GPT känns det som att föra en konversation med någon som minns allt ni pratat om. Men det är en illusion. Modellen lagrar inte samtalet någonstans permanent. Istället skickas hela konversationen – varje meddelande du skrivit, varje svar du fått – in på nytt varje gång du ställer en fråga.

Och det måste rymmas i fönstret.

---

## Hur stort är fönstret?

Tänk dig ett skrivbord. På det får du lägga papper – men bara ett visst antal. Varje ny sida du lägger till tar plats. När bordet är fullt måste de äldsta sidorna bort.

För moderna språkmodeller mäts skrivbordets storlek i "tokens" – ungefär tre fjärdedelar av ett ord i genomsnitt:

- **GPT-3.5**: 4 000 tokens (~3 000 ord)
- **GPT-4**: 8 000–128 000 tokens
- **Claude**: 100 000–200 000 tokens

Det låter som mycket. Och det är det, för de flesta samtal. Men tänk dig att du vill att AI:n ska analysera en hel bok, eller komma ihåg en komplicerad teknisk diskussion från i förrgår. Då blir gränserna snabbt påtagliga.

---

## Den avgörande skillnaden

Här brister analogin på ett viktigt sätt – och det är värt att förstå hur.

Ditt arbetsminne är *elastiskt*. Under stress kan du ibland pressa in mer. Du kan fokusera hårdare, filtrera bort distraktioner, temporärt utöka kapaciteten. Och det som ramlar ut ur arbetsminnet har en chans att ha kodats in i långtidsminnet.

AI:ns context window är *obönhörligt exakt*. Inte en token mer. Och det som ramlar ut? Det finns ingenstans. Det lagras inte någon annanstans. Det är bara borta.

Det är som om du hade ett arbetsminne som var matematiskt precist – och inget långtidsminne alls.

---

## Strategier för begränsningen

Både du och AI:n har utvecklat strategier för att hantera begränsningen.

**Du** skriver anteckningar. Du sammanfattar i huvudet. Du repeterar viktiga saker för dig själv.

**AI:n** – eller snarare, systemen runt den – använder liknande tricks:
- **Sammanfattning**: Komprimera äldre delar av samtalet
- **RAG (Retrieval-Augmented Generation)**: Hämta relevant information från externa databaser
- **Strukturerade prompts**: Sätt de viktigaste instruktionerna i början eller slutet

Det är faktiskt ganska likt hur du förbereder dig för det där mötet: du läser igenom agendan innan, håller de viktigaste punkterna överst i tanken, och hoppas att kollegorna skriver bra protokoll.

---

## Varför det spelar roll

Förståelsen av context window förklarar flera mystiska beteenden hos AI:

**"Du sa ju det förut!"**
Nej, AI:n sa det. Men det var 50 000 tokens sedan och har ramlat ut.

**"Varför upprepade du dig?"**
Modellen "minns" inte att den redan gett samma information.

**"Du verkar ha glömt instruktionerna."**
De instruktionerna fanns i början av konversationen. De har pressats ut av allt som kommit sedan.

Det är inte dumhet eller slarv. Det är matematik.

---

## Framtidens fönster

Context window växer snabbt. För några år sedan var 4 000 tokens imponerande. Nu pratar vi om miljoner. Men principen förblir densamma: det finns alltid en gräns, och den gränsen formar vad AI:n kan göra.

Tänk på det som skillnaden mellan att ha ett skrivbord och ett kontor och ett helt bibliotek. Mer utrymme hjälper. Men även bibliotek har väggar.

---

## Slutord

Nästa gång du pratar med en AI och den verkar ha "glömt" vad ni diskuterade för en stund sedan, tänk på det där mötet. Tänk på känslan av att veta att något viktigt sades, men inte kunna plocka fram det.

AI:n har inte blivit dum eller slarvig. Den har bara ett skrivbord som blev för fullt – och de äldsta pappren föll ner på golvet.

Fast till skillnad från dig kan den inte böja sig ner och plocka upp dem.

---

**Sammanfattning**
- **AI-koncept**: Context window
- **Mänsklig motsvarighet**: Arbetsminne
- **Kom ihåg**: AI:ns "minne" är ett skrivbord med exakt storlek – när det blir fullt, försvinner det äldsta för alltid.
