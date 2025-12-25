#import "style.typ":  *
#import "pediatric-scales.typ": *
#import "pediatric-meds.typ": *

#show: note-notes. with(
  title:  "Antibióticos Pediátricos",
  author: "Dr. Daniel Soto",
  date:  auto,
)

= Penicilinas

#med-card(
  family: "Penicilina",
  subfamily: "Aminopenicilina - Amplio espectro",
  code: "107",
  name: "Amoxicilina",
  concentration: "250 mg/5 mL",
  color: med-penicillin,
  indications: (
    (
      condition: "Faringoamigdalitis estreptocócica",
      dose: "50 mg/kg/día",
      max-dose: "1,000 mg/día",
      frequency: "c/12h",
      duration: "10 días",
      route: "PO",
      reference: "#1 IDSA/AAP @RedBook2024@NelsonAntimicrobial2025@Gerber2009@Shulman2012",
    ),
    (
      condition: "Otitis media aguda",
      dose: "80-90 mg/kg/día",
      max-dose: "4,000 mg/día",
      frequency: "c/12h",
      duration: "10 días (<2a) o 5-7 días (≥2a)",
      route: "PO",
      reference: "#1 AAP @Lieberthal2013@RedBook2024@NelsonAntimicrobial2025",
    ),
    (
      condition: "Sinusitis aguda",
      dose: "80-90 mg/kg/día",
      max-dose: "4,000 mg/día",
      frequency: "c/12h",
      duration: "5-7 días",
      route: "PO",
      reference: "#1 AAP @RedBook2024@NelsonAntimicrobial2025",
    ),
    (
      condition:  "Neumonía adquirida en comunidad",
      dose: "90 mg/kg/día",
      max-dose: "4,000 mg/día",
      frequency: "c/12h",
      duration: "5-7 días",
      route: "PO",
      reference: "#1 IDSA/AAP @Bradley2011@RedBook2024@NelsonAntimicrobial2025",
      severity: "severe",
      notes:  "Casos ambulatorios sin factores de riesgo",
    ),
  ),
  notes: "Contraindicado en hipersensibilidad a penicilinas.  EA:  diarrea, rash, náuseas.",
)

#med-card(
  family: "Penicilina",
  subfamily: "Aminopenicilina + Inhibidor β-lactamasa",
  code:  "142",
  name:  "Amoxicilina/Ác. Clavulánico",
  concentration: "250 mg + 62.5 mg / 5 mL (4:1)",
  color: med-penicillin,
  indications: (
    (
      condition: "Otitis media aguda",
      dose: "80-90 mg/kg/día",
      max-dose: "4,000 mg/día",
      frequency: "c/12h",
      duration: "10 días (<2a) o 5-7 días (≥2a)",
      route: "PO",
      reference: "#1 AAP @Lieberthal2013@RedBook2024@NelsonAntimicrobial2025",
    ),
    (
      condition: "Sinusitis aguda",
      dose: "80-90 mg/kg/día",
      max-dose: "4,000 mg/día",
      frequency: "c/12h",
      duration: "5-7 días",
      route: "PO",
      reference: "#1 AAP @RedBook2024@NelsonAntimicrobial2025",
    ),
    (
      condition:  "Neumonía adquirida en comunidad",
      dose: "90 mg/kg/día",
      max-dose: "4,000 mg/día",
      frequency: "c/12h",
      duration: "5-7 días",
      route: "PO",
      reference: "#1 IDSA/AAP @Bradley2011@RedBook2024@NelsonAntimicrobial2025",
      severity: "severe",
      notes:  "Casos ambulatorios sin factores de riesgo",
    ),
    (
      condition: "Infección del tracto urinario",
      dose: "30-45 mg/kg/día",
      max-dose: "1,750 mg/día",
      frequency: "c/8-12h",
      duration: "5-7 días",
      route: "PO",
      reference: "#Alternativa AAP @NelsonAntimicrobial2025",
    ),
  ),
  notes: "CI:  Hipersensibilidad a penicilinas, ictericia previa por amox-clav.  EA:  Diarrea, hepatotoxicidad.",
)

= Cefalosporinas

#med-card(
  family: "Cefalosporina",
  subfamily: "Primera generación",
  code: "1369",
  name:  "Cefadroxilo",
  concentration: "250 mg/5 mL",
  color:  med-cephalosporin,
  indications: (
    (
      condition: "Infección de piel y tejidos blandos",
      dose: "30 mg/kg/día",
      max-dose: "1,000 mg/día",
      frequency:  "c/12h",
      duration: "5 días",
      route: "PO",
      reference: "Alternativa a Cefalexina",
    ),
    (
      condition: "Infección del tracto urinario",
      dose: "30 mg/kg/día",
      max-dose:  "2,000 mg/día",
      frequency: "c/12h",
      duration: "3-14 días",
      route: "PO",
      reference: "Alternativa a Cefalexina",
    ),
  ),
  notes: "CI: Hipersensibilidad a cefalosporinas.  Precaución si alergia grave a penicilinas.",
)

#med-card(
  family: "Cefalosporina",
  subfamily: "Tercera generación",
  code: "49",
  name:  "Cefixima",
  concentration: "100 mg/5 mL",
  color:  med-cephalosporin,
  indications: (
    (
      condition: "Gastroenteritis",
      dose: "8 mg/kg/día",
      max-dose: "400 mg/día",
      frequency:  "c/12h",
      duration: "5 días",
      route: "PO",
      reference: "AAP @NelsonAntimicrobial2025",
    ),
  ),
  notes: "No se recomienda terapia antimicrobiana en gastroenteritis",
)

#med-card(
  family: "Cefalosporina",
  subfamily:  "Tercera generación",
  code: "203",
  name:  "Ceftriaxona",
  concentration: "1 g polvo para solución IV/IM",
  color: med-cephalosporin,
  indications:  (
    (
      condition: "Meningitis bacteriana",
      dose: "100 mg/kg/día",
      max-dose: "4 g/día",
      frequency: "c/12-24h",
      duration: "10-14 días (según germen)",
      route: "IV",
      reference: "@HarrietLane2023",
      severity: "severe",
      notes: "CI en neonatos con hiperbilirrubinemia",
    ),
    (
      condition: "Neumonía complicada/hospitalizada",
      dose: "50-75 mg/kg/día",
      max-dose: "2 g/día",
      frequency: "c/12-24h",
      duration: "7-10 días",
      route: "IV/IM",
      reference: "@HarrietLane2023",
      severity:  "severe",
    ),
    (
      condition:  "ITU febril / Pielonefritis",
      dose: "50-75 mg/kg/día",
      max-dose: "2 g/día",
      frequency:  "c/24h",
      duration: "10-14 días",
      route: "IV/IM",
      reference: "@HarrietLane2023",
      severity: "moderate",
    ),
  ),
  notes: "No mezclar con soluciones con calcio.  EA: Diarrea, pseudolitiasis biliar, flebitis.",
)

#v(0.8em)

== Macrólidos

#med-card(
  family: "Macrólido",
  subfamily: "Azálido",
  code:  "301",
  name:  "Azitromicina",
  concentration: "200 mg/5 mL",
  color: med-macrolide,
  indications: (
    (
      condition: "Faringitis (alergia a penicilina)",
      dose: "12 mg/kg/día",
      max-dose: "500 mg/día",
      frequency: "c/24h",
      duration: "5 días",
      route: "VO",
      reference: "@HarrietLane2023",
    ),
    (
      condition: "Neumonía atípica (Mycoplasma, Chlamydia)",
      dose: "10 mg/kg D1, luego 5 mg/kg D2-5",
      max-dose: "500 mg D1, 250 mg D2-5",
      frequency: "c/24h",
      duration: "5 días",
      route: "VO",
      reference:  "@HarrietLane2023",
    ),
    (
      condition:  "Tos ferina (Bordetella pertussis)",
      dose: "10 mg/kg D1, luego 5 mg/kg D2-5",
      max-dose:  "500 mg D1, 250 mg D2-5",
      frequency:  "c/24h",
      duration:  "5 días",
      route: "VO",
      reference: "@HarrietLane2023",
      severity: "moderate",
      notes: "<1 mes: 10 mg/kg/día por 5 días",
    ),
  ),
  notes: "CI: Hipersensibilidad a macrólidos. EA: Dolor abdominal, diarrea.  Raro: prolongación QT.",
)

#v(0.8em)

#note-info-box(title: "ⓘ Abreviaturas")[
  *ITU* = Infección del Tracto Urinario | *OMA* = Otitis Media Aguda | *RVU* = Reflujo Vesicoureteral \
  *VO* = Vía Oral | *IV* = Intravenoso | *IM* = Intramuscular | *CI* = Contraindicación | *EA* = Efectos Adversos
]

#v(0.5em)

#note-tags((
  "antibióticos",
  "farmacología",
  "dosis-pediátricas",
  "infectología",
  "pediatría",
))

// Bibliography
#bibliography("bib.yml", style: "mary-ann-liebert-vancouver")
