# Specialisten: När AI:n går vidare till högre studier

![Kapitel 8: Fine-tuning](../assets/images/chapter-08.png)

> Fine-tuning är AI:ns specialistutbildning – att ta en allmänutbildad modell och forma den för ett specifikt yrke, precis som en läkare som specialiserar sig till kirurg.

---

Emma har gått ut läkarutbildningen. Sex års studier, praktik på sjukhus, tentamen efter tentamen. Hon kan grunderna: anatomi, fysiologi, diagnostik, behandling. Hon är en kompetent allmänläkare.

Men Emma vill bli hjärtkirurg.

Nu börjar specialistutbildningen. Den bygger på allt hon redan kan – hon behöver inte lära sig läsa röntgenbilder från början eller repetera kemiska formler. Istället fokuserar hon djupt på hjärtat: dess specifika anatomi, de kirurgiska teknikerna, de särskilda komplikationerna.

Det tar år, inte årtionden. Det är specialisering, inte omstart.

Och det är exakt vad fine-tuning är för AI.

---

## Bryggan till AI

En stor språkmodell som GPT eller Claude har genomgått massiv grundträning på terabyte av text. Den har lärt sig språk, fakta, mönster, resonemang. Den är en generalist – kan lite om allt, expert på ingenting.

Fine-tuning tar denna generalist och ger den specialistkunskap.

Processen är snabbare och billigare än grundträningen. Istället för miljoner dollar och månader av beräkning kan fine-tuning kosta tusentals dollar och ta dagar eller veckor.

Det är som skillnaden mellan att uppfostra ett barn från födseln och att vidareutbilda en vuxen.

---

## Hur det fungerar

Det tekniska är elegant enkelt.

Du tar en förtränad modell – alla dess miljarder vikter, all kunskap den redan har. Sen tränar du den vidare på en ny, mindre dataset.

Det viktiga är att du inte börjar om. Vikterna är inte slumpmässiga, de är redan fyllda av användbar kunskap. Du *justerar* dem, *finjusterar* dem – därav namnet.

Typiskt använder man en lägre inlärningshastighet. Om grundträningen tog stora kliv genom viktrummet, tar fine-tuning små, försiktiga steg. Annars förstörs den befintliga kunskapen.

---

## Tre typer av specialisering

Fine-tuning kan göras på olika sätt, beroende på vad du vill uppnå.

**Instruction tuning**: Lär modellen att följa instruktioner bättre. GPT-3 var en textprediktor som fortsatte meningar. InstructGPT blev en assistent som svarade på frågor. Det var fine-tuning som gjorde skillnaden.

**Domänanpassning**: Specialisera modellen för ett specifikt område. En allmän modell som tränas vidare på medicinska texter blir bättre på att förstå och producera medicinskt språk.

**RLHF (Reinforcement Learning from Human Feedback)**: Människor bedömer modellens svar. Modellen lär sig producera svar som människor föredrar. Det är detta som gör moderna chatbots hjälpsamma, vänliga och säkra.

---

## RLHF: Coachning, inte undervisning

RLHF är speciellt intressant. Det liknar coaching mer än traditionell utbildning.

Tänk dig skillnaden mellan en föreläsning och en mentor.

I en föreläsning får du fakta: "Så här fungerar hjärtat."

Med en mentor får du feedback: "Det där svaret var bra. Det där var för kortfattat. Det där var för tekniskt för patienten."

RLHF fungerar som mentorn. Människor jämför modellens olika svar och väljer vilket som var bättre. Modellen lär sig producera svar som *uppskattas* – inte bara svar som är tekniskt korrekta, utan svar som är hjälpsamma, tydliga, säkra.

Det är därför ChatGPT känns så annorlunda än GPT-3, trots att de bygger på samma grund.

---

## Risken: Att glömma det gamla

Här uppstår ett problem som inte har någon perfekt mänsklig motsvarighet.

Om du specialiserar dig på hjärtkirurgi glömmer du inte hur man tar blodtryck. Din allmänmedicinska kunskap finns kvar, under specialiseringen.

AI:n har det svårare. När vikterna justeras för specialistkunskap kan de *förlora* generalistkunskapen. Det kallas *catastrophic forgetting* – katastrofal glömska.

En modell som fine-tunas hårt på juridiska texter kan bli sämre på att prata vardagligt. En modell som specialiseras på medicinsk diagnostik kan börja hallucinera mer om geografi.

Det finns sätt att mildra detta – bland annat en teknik kallad LoRA som lägger på ett separat "lager" av specialisering utan att röra originalvikterna – men problemet försvinner aldrig helt.

---

## LoRA: Att lära sig ett nytt språk

LoRA (Low-Rank Adaptation) är en smart lösning på glömskrisken.

Tänk på det så här. Emma, hjärtkirurgen, lär sig använda ett nytt datasystem på sjukhuset. Hon lär sig nya rutiner, nya formulär, nya genvägstangenter.

Detta ersätter inte hennes medicinska kunskap. Det *läggs ovanpå*. Om hon byter sjukhus kan hon "stänga av" kunskapen om det gamla systemet och lära sig det nya – den grundläggande kirurgiska kompetensen är oförändrad.

LoRA fungerar likadant. Istället för att ändra modellens originalvikter lägger man till små separata viktmatriser. Specialiseringen är ett tillägg, inte en förändring.

Det gör det möjligt att snabbt växla mellan specialiseringar – samma grundmodell kan ha en "juridik-adapter", en "medicin-adapter", och en "kodnings-adapter", utan att någon av dem förstör de andra.

---

## När behövs fine-tuning?

Här är en överraskande insikt: fine-tuning behövs sällan.

Moderna språkmodeller är så kapabla att *prompt engineering* – att formulera frågan rätt – ofta räcker. Vill du att modellen ska skriva i en viss stil? Beskriv stilen. Vill du ha specifika fakta inkluderade? Ge dem i prompten.

RAG (hämta relevant information och inkludera i frågan) löser många problem som tidigare krävde fine-tuning.

Fine-tuning är en sista utväg. Dyrt, tidskrävande, med risk för oförutsedda bieffekter.

Den rekommenderade progressionen är: Prompt engineering → RAG → Fine-tuning.

---

## Vad fine-tuning inte gör

Ett vanligt missförstånd: "Fine-tuning gör modellen smartare."

Nej. Fine-tuning gör modellen mer *specialiserad*, inte mer *intelligent*.

En fine-tunad GPT-3.5 kan bli bättre på att skriva juridiska avtal. Men den blir inte bättre på att resonera abstrakt eller förstå komplexa sammanhang. Dess grundläggande kapacitet är oförändrad – den har bara laddats med specialiserade mönster.

Det är som att Emma blir en skicklig hjärtkirurg utan att hennes allmänna IQ förändras. Hon vet mer om hjärtan, men hon blir inte smartare som person.

---

## Analogins gränser

Specialistutbildning fångar det mesta. Men det finns skillnader.

Emma kan jonglera sin specialistkunskap med sin allmänkunskap. Hon kan se en patient med hjärtproblem och samtidigt tänka på deras diabetes. Människan multitaskar.

AI:n är mer sårbar. Fine-tuning kan dra modellen för långt i en riktning. Det finns ingen "vuxen människa" som håller i tyglarna och säger "behåll proportionerna."

Och Emma har ett långtidsminne. Hon minns fallet som gick fel förra året. Modellen har bara vikter – aggregerad statistik, inga specifika minnen.

---

## Slutord

Nästa gång du hör att någon "fine-tunat" en modell för ett specifikt syfte, tänk på specialistutbildning.

Grundmodellen är allmänläkaren – bred kompetens, kan lite om allt.

Fine-tuning skapar kirurgen, juristen, poeten, kundtjänstmedarbetaren.

Men kom ihåg: specialisten är fortfarande bunden av generalistens ursprungliga kapacitet. Man kan inte fine-tuna en modell till att bli bättre än sin grundträning tillåter.

Det är fortfarande samma hjärna – bara med annan fokusering.

---

**Sammanfattning**
- **AI-koncept**: Fine-tuning
- **Mänsklig motsvarighet**: Specialistutbildning / vidareutbildning
- **Kom ihåg**: Fine-tuning specialiserar en redan utbildad modell för specifika uppgifter – snabbare och billigare än grundträning, men med risk att förlora generalistkunskap.
