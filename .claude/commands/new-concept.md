# Nytt AI-Koncept

Starta arbetet med ett nytt AI-koncept för boken.

## Input
**Koncept**: $ARGUMENTS

## Arbetsflöde

### 1. Research (researcher-agent)
Utforska konceptet på djupet:
- Sök efter tekniska definitioner
- Samla praktiska exempel
- Identifiera vanliga missförstånd
- Dokumentera i `/research/{koncept}.md`

### 2. Översättning (translator-agent)
Hitta mänskliga motsvarigheter:
- Brainstorma minst 5 analogier
- Utvärdera varje analogi
- Välj den bästa
- Dokumentera i `/glossary/{koncept}.md`

### 3. Sammanfattning
Presentera:
- Vald översättning: **{AI-koncept}** → **{Mänsklig motsvarighet}**
- Kort motivering
- Nästa steg: `/book:write-chapter` för att skriva kapitlet
