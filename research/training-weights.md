# Training och Weights

## Teknisk Definition

**Weights (Vikter/Parametrar)**: Numeriska värden som avgör styrkan på kopplingar mellan neuroner i ett neuralt nätverk. Vikter multipliceras med inputvärden för att bestämma hur mycket varje signal påverkar nästa lager.

**Training (Träning)**: Processen att iterativt justera ett neuralt nätverks vikter för att minimera skillnaden mellan modellens förutsägelser och faktiska utfall.

**Kärnpunkter**:
- Vikter startar som slumpmässiga värden nära noll
- Träning förändrar vikternas värden genom matematisk optimering
- En tränad modell "lär sig" inte efter deployment – vikterna är fixerade
- Moderna modeller har miljarder eller biljoner parametrar

## Hur Det Fungerar

### Träningsprocessens Steg

**1. Initialisering**: Nätverket skapas med slumpmässiga vikter

**2. Forward Pass**: Träningsdata matas in, signaler propagerar genom lagren, output genereras

**3. Loss Function**: Beräknar hur fel förutsägelsen var

**4. Backpropagation**: Algoritmen beräknar hur varje vikt bidrog till felet genom att propagera felgradienten bakåt

**5. Gradient Descent**: Uppdaterar vikterna en liten bit i riktningen som minskar felet
- Viktuppdatering: `ny_vikt = gammal_vikt - (learning_rate × gradient)`

**6. Iteration**: Steg 2-5 upprepas tusentals eller miljontals gånger tills konvergens

### Utmaningar i Träning

- **Vanishing Gradients**: Gradienter i tidiga lager blir extremt små
- **Overfitting**: Modellen "memorerar" istället för att generalisera
- **Exploding Gradients**: Gradienter växer exponentiellt

## Vanliga Missförstånd

### "AI lär sig som människor"

**Verklighet**: AI "lär sig" genom att koda statistiska mönster med ren matematik. När en människa lär sig känna igen en katt lär sig konceptet "katt". För en maskin betyder det att känna igen pixelmönster och matcha till en kategori.

### "AI fortsätter lära sig efter deployment"

**Verklighet**: De flesta AI-system lär sig inte efter de byggts. ChatGPT minns endast vad som händer i en enda session. Stäng fönstret = rent blad. Vikterna är fixerade.

### "Träning = Erfarenhet"

**Verklighet**: Träning komprimerar miljontals exempel till vikternas värden. Inga enskilda "minnen" lagras – bara abstrakta statistiska mönster. AI kan inte peka på när eller var den "lärde sig" något specifikt.

## Nyckelinsikter för Översättning

### Weights som Erfarenheter/Lärdomar

**Paralleller**:
- Vikter är som *viktat inflytande* från alla upplevelser vi haft
- Inte enskilda minnen, utan aggregerad visdom
- Som när vi "känner" att något är rätt utan att minnas varför
- Som reflexer/intuition formade av tusentals repetitioner

**Analogier**:
- Synaptisk plasticitet i hjärnan
- Muskelminne hos atleter och musiker
- Experters "känsla" för sitt fält efter år av övning
- Barn som lär sig gå genom tusentals små justeringar

### Training som Uppväxt/Utveckling

**Paralleller**:
- Startar "okunnig" med slumpmässig kunskap
- Behöver exponering för många exempel
- Får feedback (loss function = korrigering)
- Gradvis förbättring över tid

**Analogier**:
- Barns språkinlärning genom exponering
- Idrottsträning med coach som ger feedback
- Musiker som tränar samma passage om och om igen

### Backpropagation som Självkritik

**Paralleller**:
- Analysera vad som gick fel
- Spåra orsaken bakåt genom beslutskedjan
- Justera tänkande baserat på insikten

**Analogi**: Att reflektera över ett misstag: "Varför gjorde jag så?" – spåra en felaktig slutsats till felaktigt antagande.

### Kritiska Skillnader

1. **Ingen medvetenhet**: AI har inget "jag" som upplever träning
2. **Ingen episodisk minneslagring**: Kan inte minnas specifika träningsexempel
3. **Fryst efter träning**: Lär sig inte från användning
4. **Rent statistiskt**: Inga koncept eller förståelse, bara mönster

## Källor

- Neural networks (Google for Developers)
- What is Gradient Descent? (IBM)
- What is Backpropagation? (IBM)
- AI doesn't really 'learn' (The Conversation)
- Introducing Nested Learning (Google Research)
