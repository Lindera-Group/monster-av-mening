# Overfitting (Överanpassning)

## Teknisk Definition

Overfitting är ett oönskat beteende i maskininlärning som uppstår när en modell lär sig träningsdatan för väl, och därigenom fångar både relevanta mönster och orelevant brus. Detta resulterar i hög precision på träningsdatan men dålig förmåga att göra korrekta förutsägelser på ny, tidigare osedd data.

Tekniskt sett betyder overfitting att modellen har **låg bias men hög varians** – den anpassar sig för exakt till de specifika exemplen i träningsdatan istället för att lära sig de generaliserbara mönstren som gäller även för ny data.

## Hur Det Fungerar

### 1. Memorering vs Generalisering

Overfitting är fundamentalt en konflikt mellan två typer av inlärning:

- **Memorering**: Modellen lagrar specifika exempel från träningsdatan utan att förstå underliggande mönster
- **Generalisering**: Modellen upptäcker djupare regler som gör att den kan lyckas även i nya, osedda scenarion

Memorering är enklare än generalisering. Under tidig träning är slumpmässiga viktuppdateringar mer benägna att hitta en av de många memoreringstrategierna än den sällsynta generaliseringsbara regeln – därför tenderar modeller att memorera först.

Memorering kräver ingen djup omorganisering av modellens interna vikter, bara en direkt mappning från input till output. Generalisering däremot kräver att nätverket komprimerar datan till en enklare representation, vilket tar mer tid och strukturella justeringar.

### 2. Bias-Variance Tradeoff

Bias-variance tradeoff beskriver förhållandet mellan en modells komplexitet, noggrannheten i dess förutsägelser, och hur väl den kan göra förutsägelser på tidigare osedd data.

| Aspekt | Bias | Variance |
|--------|------|----------|
| Definition | Fel från felaktiga antaganden i lärandealgoritmen | Fel från känslighet för små variationer i träningsdatan |
| Problem | **Underfitting** (för enkla modeller) | **Overfitting** (för komplexa modeller) |
| Symptom | Hög träningsfel, hög valideringsfel | Låg träningsfel, hög valideringsfel |
| Förklaring | Missar relevanta samband mellan features och output | Fångar brus som om det vore signal |

**Avvägningen**: Det finns en tradeoff mellan bias och varians som följer med modellkomplexitet:
- Modeller som är för komplexa har hög varians och låg bias
- Modeller som är för enkla har hög bias och låg varians

Den optimala modellen hittar en balans mellan dessa två extremer, och uppnår både låg bias och låg varians för att generalisera väl till ny data.

### 3. Upptäcka Overfitting: Train vs Validation Loss

Overfitting upptäcks genom att jämföra modellens prestanda på träningsdata kontra valideringsdata:

**Klassiska tecken på overfitting:**

1. **Divergerande loss-kurvor**: Valideringsfelet ökar medan träningsfelet fortsätter minska
2. **Växande gap**: Stor skillnad mellan tränings- och valideringsfel
3. **Timing**: Träningsfelet fortsätter minska medan valideringsfelet börjar stiga

**Visuella mönster:**

```
Training Loss:    \___________  (fortsätter minska)
Validation Loss:  \___/‾‾‾‾‾‾  (minskar först, sedan ökar)
                      ↑
                  Optimal stopppunkt
```

**Andra mönster:**

- **Underfitting**: Både tränings- och valideringsfel förblir höga
- **Optimal fit**: Både tränings- och valideringsfel minskar till en stabil punkt
- **Tidig overfitting**: En modell med en skarp "U"-form indikerar ofta för hög kapacitet och/eller för hög learning rate

## Praktisk Användning

### Motåtgärder mot Overfitting

#### 1. Regularization (Regularisering)

Regularisering lägger till en straff (penalty) till förlustfunktionen för komplexitet, vilket motverkar att modellen tilldelar för mycket vikt åt enskilda features.

**Typer:**
- **L1 Regularization**: Uppmuntrar sparsity, kan sätta vikter till exakt noll
- **L2 Regularization**: Krymper vikter mot noll, behåller alla features

#### 2. Dropout

Dropout är en regulariseringsteknik som slumpmässigt "släcker" neuroner under träning genom att sätta deras output till noll med en viss sannolikhet.

**Hur det fungerar:**
- Tvingar modellen att lära sig mer robusta och oberoende features
- Förhindrar neuroner från att bli för beroende av specifika andra neuroner
- Typisk dropout-rate: 0.2 till 0.5

**Effekt:**
- Minskar co-adaptation mellan neuroner
- Skapar implicit ensemble av många olika nätverksarkitekturer
- Modellen kan inte förlita sig på enskilda neuroner → mer robust generalisering

#### 3. Early Stopping

Early stopping stoppar träningen när tecken på overfitting börjar visa sig.

**Metod:**
- Övervaka valideringsfelet under träning
- Om valideringsfelet slutar minska eller börjar öka efter ett visst antal epoker → stoppa
- Behåll vikterna från punkten med lägst valideringsfel

**Fördel:**
- Enkelt att implementera
- Förhindrar onödig träning
- Bevarar den "sweet spot" där modellen generaliserar bäst

#### 4. Andra tekniker

- **Data augmentation**: Skapa fler träningsexempel genom transformationer
- **Feature selection**: Välj endast de mest relevanta features
- **Mer träningsdata**: Den ultimata lösningen – mer data gör memorering svårare
- **Cross-validation**: Validera på flera olika datauppsättningar
- **Ensemble methods**: Kombinera flera modeller

## Vanliga Missförstånd

### ❌ "Högre träningsnoggrannhet är alltid bättre"
**Sanning**: 100% träningsnoggrannhet är ofta ett varningstecken för overfitting. Det kan betyda att modellen har memorerat träningsdatan istället för att lära sig generaliserande mönster.

### ❌ "Overfitting betyder att modellen är för smart"
**Sanning**: Overfitting betyder tvärtom att modellen är för "dum" – den kan inte abstrahera bort irrelevanta detaljer och fokusera på vad som verkligen spelar roll.

### ❌ "Mer träning löser alltid problemet"
**Sanning**: Längre träning kan faktiskt förvärra overfitting. Det är som att plugga samma gamla tentor om och om igen – du blir bättre på just de tentorna, men inte på ämnet generellt.

### ❌ "Regularisering är alltid bra"
**Sanning**: För mycket regularisering kan leda till underfitting – modellen blir för restriktiv och kan inte ens lära sig de verkliga mönstren.

### ❌ "Overfitting är binärt – antingen har man det eller inte"
**Sanning**: Overfitting är en kontinuerlig skala. Alla modeller overfittar till viss grad. Konsten är att hitta rätt balans.

## Nyckelinsikter för Översättning

### Likheter med mänsklig överinlärning

1. **Plugga till provet**: Memorera specifika tentafrågor utan att förstå ämnet
   - Lyckas på träningsexempel (gamla tentor)
   - Misslyckas på nya problem (verklig tenta)

2. **Övertänkande/fixering**: Fastna i detaljer istället för att se helheten
   - Lägger vikt vid irrelevanta mönster
   - Missar den större bilden

3. **Recitation utan förståelse**: Kunna rabbla fakta men inte tillämpa dem
   - Perfekt återgivning av träningsdata
   - Oförmögen att hantera variationer

4. **Expertens paradox**: För specialiserad för ett smalt område
   - Expert på exakt de scenarion man övat på
   - Handlingsförlamad utanför komfortzonen

### Avgörande skillnader

1. **Medvetenhet**:
   - Människor kan inse när de memorerar utan förståelse
   - AI-modeller har ingen metakognition om sin overfit-status

2. **Flexibilitet**:
   - Människor kan aktivt försöka generalisera
   - AI kräver strukturella ändringar (regularisering, mer data)

3. **Återhämtning**:
   - Människor kan "avlära" dåliga vanor genom insikt
   - AI måste omlärares från början (eller från checkpoint)

4. **Grad av överanpassning**:
   - Människor kan sällan memorera perfekt
   - AI kan memorera träningsdata 100% exakt

### Analogins styrkor

- **Plugga till provet** fångar perfekt idén om memorering vs förståelse
- **Övertänkande** speglar fokus på irrelevanta detaljer (brus)
- **Bias-variance som strikt vs flexibel** är intuitivt
- **Generalisering som "verklig förståelse"** är relatbart

### Analogins begränsningar

- Människor kan inte ha "låg bias och hög varians" i samma matematiska mening
- Dropout har ingen direkt mänsklig motsvarighet
- Loss curves och matematisk optimering saknar mänskligt korrelat
- AI kan ha perfekt memorering – människor glömmer detaljer
- Regularisering som "straff för komplexitet" är svår att översätta direkt

### Viktiga aspekter att betona

1. **Memorering ≠ Inlärning**: Det centrala problemet
2. **Generalisering som mål**: Varför vi vill ha modeller
3. **Balansen**: Varken för simpel (underfitting) eller för komplex (overfitting)
4. **Upptäckt**: Hur man ser skillnaden mellan träning och verklig prestanda
5. **Lösningar**: Praktiska strategier som dropout, regularisering, early stopping

## Källor

- [Overfitting | Machine Learning | Google for Developers](https://developers.google.com/machine-learning/crash-course/overfitting/overfitting)
- [What is Overfitting? - AWS](https://aws.amazon.com/what-is/overfitting/)
- [Overfitting in Machine Learning (ML) | Ultralytics](https://www.ultralytics.com/glossary/overfitting)
- [What is Overfitting in Machine Learning? | TechTarget](https://www.techtarget.com/whatis/definition/overfitting-in-machine-learning)
- [Overfitting - Wikipedia](https://en.wikipedia.org/wiki/Overfitting)
- [Bias–variance tradeoff - Wikipedia](https://en.wikipedia.org/wiki/Bias%E2%80%93variance_tradeoff)
- [What Is the Difference Between Bias and Variance? | Masters in Data Science](https://www.mastersindatascience.org/learning/difference-between-bias-and-variance/)
- [Bias-Variance Trade Off - GeeksforGeeks](https://www.geeksforgeeks.org/machine-learning/ml-bias-variance-trade-off/)
- [Learning Curve to identify Overfitting and Underfitting | Towards Data Science](https://towardsdatascience.com/learning-curve-to-identify-overfitting-underfitting-problems-133177f38df5/)
- [Overfitting: Interpreting loss curves | Google for Developers](https://developers.google.com/machine-learning/crash-course/overfitting/interpreting-loss-curves)
- [Training and Validation Loss in Deep Learning | GeeksforGeeks](https://www.geeksforgeeks.org/deep-learning/training-and-validation-loss-in-deep-learning/)
- [Dropout Regularization in Deep Learning | DigitalOcean](https://www.digitalocean.com/community/tutorials/droput-regularization-deep-learning)
- [Understanding Dropout in Deep Learning | Medium](https://medium.com/@piyushkashyap045/understanding-dropout-in-deep-learning-a-guide-to-reducing-overfitting-26cbb68d5575)
- [Regularization by Early Stopping - GeeksforGeeks](https://www.geeksforgeeks.org/regularization-by-early-stopping/)
- [Do Machine Learning Models Memorize or Generalize? | Google PAIR](https://pair.withgoogle.com/explorables/grokking/)
- [Memorization Isn't Learning, It's Overfitting | Medium](https://aiqc.medium.com/memorization-isnt-learning-it-s-overfitting-b3163fe6a8b4)
- [Generalization: Peril of Overfitting | Google Machine Learning](https://developers.google.com/machine-learning/crash-course/generalization/peril-of-overfitting)
- [Stop Overfitting, Add Bias: Generalization In Machine Learning](https://enjoymachinelearning.com/blog/generalization-in-machine-learning/)
