# Skriv Kapitel

Skapa ett komplett kapitel baserat på befintlig research och översättning.

## Input
**Koncept**: $ARGUMENTS

## Förutsättningar
Kontrollera att dessa filer finns:
- `/research/{koncept}.md` - Research klar
- `/glossary/{koncept}.md` - Översättning vald

Om någon saknas, kör `/book:new-concept {koncept}` först.

## Arbetsflöde

### 1. Skriv Utkast (writer-agent)
Skapa kapitel enligt strukturen:
1. Öppningsscen (relaterbar situation)
2. Bryggan (koppling till AI)
3. Fördjupning (via analogin)
4. Begränsningar (var analogin brister)
5. Sammanfattning (minnesvärd avslutning)

Spara i `/chapters/{XX}-{koncept}.md`

### 2. Redigera (editor-agent)
Granska och förfina:
- Klarhet och flöde
- Ton och tillgänglighet
- Språklig precision

### 3. Faktakontroll (fact-checker-agent)
Verifiera:
- Tekniska påståenden
- Analogins korrekthet
- Aktuella siffror

### 4. Leverera
Presentera:
- Färdigt kapitel
- Redaktörens anteckningar
- Faktakontrollens resultat
