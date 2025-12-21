#import "style.typ":  *
#import "pediatric-scales.typ": *

#show:  note-notes. with(
  title: "Valores de Función Tiroidea",
  author: "Dr. Daniel Soto",
  date: auto,
)

= Pruebas de Función Tiroidea

== Hormona Estimulante de la Tiroides

#block(
  fill: ped-bg-light,
  stroke: 1.5pt + frost4,
  width: 100%,
  inset: 0pt,
  radius: 6pt,
  clip: true,
)[
  #block(
    fill:  frost4,
    width: 100%,
    inset: 8pt,
  )[
    #text(weight: "bold", fill: white, size: 12pt)[TSH - Valores Normales@HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(μUI/mL)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns:  (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table. cell(fill: frost4)[#text(weight: "bold", fill: white, size:  12pt)[Edad]],
      table. cell(fill: frost4)[#text(weight: "bold", fill: white, size: 12pt)[Rango]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[0-6 días]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 12pt)[0.7-15.2]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 12pt)[1 sem - 3 meses]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 12pt)[0.72-11]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[3-12 meses]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 12pt)[0.73-8.35]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  12pt)[1-5 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 12pt)[0.7-5.97]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[6-10 años]],
      table.cell(fill: ped-bg-alt)[#text(weight:  "semibold", size: 12pt)[0.6-4.84]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 12pt)[> 10 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 12pt)[0.45-4.5]],
    )
  ]
  
  #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
    #text(size: 7pt, fill: night3)[Fuente: Labcorp]
  ]
]

#v(0.8em)

== T4 Libre

#block(
  fill: ped-bg-light,
  stroke:  1.5pt + aurora4,
  width: 100%,
  inset:  0pt,
  radius: 6pt,
  clip: true,
)[
  #block(
    fill: aurora4,
    width: 100%,
    inset:  8pt,
  )[
    #text(weight:  "bold", fill:  white, size: 12pt)[T4 Libre - Valores Normales@HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(pmol/L)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns:  (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table. cell(fill: aurora4)[#text(weight: "bold", fill: white, size: 12pt)[Edad]],
      table.cell(fill: aurora4)[#text(weight:  "bold", fill:  white, size: 12pt)[Rango]],
      
      table.cell(fill: ped-bg-light)[#text(size:  12pt)[0-3 días]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 12pt)[8.49-34.88]],
      
      table. cell(fill: ped-bg-alt)[#text(size: 12pt)[4-30 días]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 12pt)[10.68-39.77]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[1-12 meses]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 12pt)[6.17-10.94]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 12pt)[13 meses - 5 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 12pt)[10.94-22.52]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[6-10 años]],
      table.cell(fill: ped-bg-alt)[#text(weight:  "semibold", size: 12pt)[11.58-21.49]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 12pt)[11-19 años]],
      table. cell(fill: ped-bg-light)[#text(weight: "semibold", size: 12pt)[11.97-20.59]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[> 19 años]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 12pt)[10.55-22.78]],
    )
  ]
  
  #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
    #text(size:  7pt, fill: night3)[Fuente: Labcorp]
  ]
]

#v(0.8em)

#note-tip-box(title: "⭐️ Levotiroxina")[
  - 1 a 3 meses: 10 - 15 mcg/kg/día @LevothyroxineUpToDate
  - >3 a 6 meses: 8 - 10 mcg/kg/día
  - >6 a 12 meses: 6 - 8 mcg/kg/día
  - 1 a 5 años: 5 - 6 mcg/kg/día
  - 6 a 12 años: 4 - 5 mcg/kg/día
  - Cardiópatas: Iniciar al 50% durante 2 semanas
]
#v(0.8em)

== T4 Total

#block(
  fill: ped-bg-light,
  stroke: 1.5pt + aurora5,
  width:  100%,
  inset: 0pt,
  radius: 6pt,
  clip:  true,
)[
  #block(
    fill: aurora5,
    width:  100%,
    inset: 8pt,
  )[
    #text(weight: "bold", fill: white, size: 12pt)[T4 Total por Sexo@HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(nmol/L)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns:  (1fr, 0.8fr, 0.8fr),
      stroke: 0.8pt + night3,
      inset:  5pt,
      align: (left, center, center),
      
      table.cell(fill: aurora5)[#text(weight:  "bold", fill:  white, size: 12pt)[Edad]],
      table.cell(fill: frost3. lighten(30%))[#text(weight: "bold", fill: night0, size: 12pt)[♂]],
      table.cell(fill: aurora5.lighten(30%))[#text(weight: "bold", fill: night0, size: 12pt)[♀]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[< 1 mes]],
      table.cell(fill: frost3.lighten(60%))[#text(size: 12pt)[57.92-221.39]],
      table.cell(fill: aurora5.lighten(60%))[#text(size: 12pt)[57.92-221.39]],
      
      table. cell(fill: ped-bg-alt)[#text(size: 12pt)[1-23 meses]],
      table.cell(fill: frost3.lighten(70%))[#text(size: 12pt)[75.94-178.92]],
      table.cell(fill: aurora5.lighten(70%))[#text(size: 12pt)[75.94-178.92]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[2-12 años]],
      table. cell(fill: frost3.lighten(60%))[#text(size: 12pt)[73.37-149.31]],
      table.cell(fill: aurora5.lighten(60%))[#text(size: 12pt)[73.37-149.31]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 12pt)[13-20 años]],
      table.cell(fill: frost3.lighten(70%))[#text(size: 12pt)[65.64-132.58]],
      table.cell(fill: aurora5.lighten(70%))[#text(size: 12pt)[68.22-150.60]],
      
      table.cell(fill: ped-bg-light)[#text(size: 12pt)[> 20 años]],
      table.cell(fill: frost3.lighten(60%))[#text(size: 12pt)[63.07-135.15]],
      table.cell(fill: aurora5.lighten(60%))[#text(size: 12pt)[65.64-153.17]],
    )
  ]
  
  #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
    #text(size: 7pt, fill: night3)[Fuente: Quest Diagnostics]
  ]
]

#v(0.8em)

== Interpretación de Pruebas

#block(
  fill:  ped-bg-light,
  stroke: 1.5pt + frost3,
  width:  100%,
  inset: 0pt,
  radius: 6pt,
  clip:  true,
)[
  #block(
    fill: frost3,
    width:  100%,
    inset: 8pt,
  )[
    #text(weight: "bold", fill: white, size: 11pt)[🔍 Interpretación Clínica]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns: (1.4fr, 0.5fr, 0.5fr, 0.7fr),
      stroke: 0.8pt + night3,
      inset:  4pt,
      align: (left, center, center, center),
      
      table.cell(fill: frost3)[#text(weight: "bold", fill: white, size: 8pt)[Trastorno]],
      table.cell(fill: frost3)[#text(weight:  "bold", fill:  white, size: 8pt)[TSH]],
      table.cell(fill: frost3)[#text(weight: "bold", fill: white, size: 8pt)[T4]],
      table. cell(fill: frost3)[#text(weight: "bold", fill: white, size: 8pt)[T4 libre]],
      
      // Hipertiroidismo primario
      table. cell(fill: ped-bg-light)[#text(size: 9pt, weight: "semibold")[Hipertiroidismo primario]],
      table.cell(fill: ped-info. lighten(40%))[#text(size: 8pt)[↓ B]],
      table.cell(fill: ped-critical.lighten(40%))[#text(size: 8pt)[↑ A]],
      table.cell(fill: ped-warning.lighten(40%))[#text(size: 8pt)[N alta - ↑ A]],
      
      // Hipotiroidismo primario
      table.cell(fill: ped-bg-alt)[#text(size: 9pt, weight: "semibold")[Hipotiroidismo primario]],
      table. cell(fill: ped-critical.lighten(40%))[#text(size: 8pt)[↑ A]],
      table.cell(fill: ped-info.lighten(40%))[#text(size: 8pt)[↓ B]],
      table.cell(fill: ped-info.lighten(40%))[#text(size: 8pt)[↓ B]],
      
      // Hipotiroidismo hipotalámico/hipofisario
      table.cell(fill: ped-bg-light)[#text(size: 9pt, weight: "semibold")[Hipotiroidismo central #super[a]]],
      table. cell(fill: ped-caution.lighten(30%))[#text(size: 8pt)[B, N, A]],
      table.cell(fill: ped-info.lighten(40%))[#text(size: 8pt)[↓ B]],
      table.cell(fill: ped-info. lighten(40%))[#text(size: 8pt)[↓ B]],
      
      // Deficiencia de TBG
      table.cell(fill: ped-bg-alt)[#text(size: 9pt, weight: "semibold")[Deficiencia de TBG]],
      table.cell(fill: ped-normal.lighten(40%))[#text(size: 8pt)[N]],
      table.cell(fill: ped-info.lighten(40%))[#text(size: 8pt)[↓ B]],
      table.cell(fill: ped-normal.lighten(40%))[#text(size: 8pt)[N]],
      
      // Síndrome del enfermo eutiroideo
      table.cell(fill: ped-bg-light)[#text(size:  9pt, weight: "semibold")[Sd. enfermo eutiroideo #super[a]]],
      table.cell(fill: ped-caution.lighten(30%))[#text(size:  8pt)[B, N, A]],
      table. cell(fill: ped-info.lighten(40%))[#text(size:  8pt)[↓ B]],
      table.cell(fill: ped-caution.lighten(30%))[#text(size: 8pt)[B - N baja]],
      
      // Adenoma de TSH o resistencia hipofisaria
      table.cell(fill: ped-bg-alt)[#text(size: 9pt, weight: "semibold")[Adenoma TSH / Resist. hipofisaria]],
      table.cell(fill: ped-warning.lighten(40%))[#text(size: 8pt)[N - ↑ A]],
      table.cell(fill: ped-critical.lighten(40%))[#text(size: 8pt)[↑ A]],
      table.cell(fill: ped-critical.lighten(40%))[#text(size: 8pt)[↑ A]],
      
      // Hipotiroidismo subclínico
      table.cell(fill: ped-bg-light)[#text(size: 9pt, weight: "semibold")[Hipotiroidismo subclínico #super[b]]],
      table.cell(fill: ped-critical.lighten(40%))[#text(size: 8pt)[↑ A]],
      table.cell(fill: ped-normal.lighten(40%))[#text(size: 8pt)[N]],
      table.cell(fill: ped-normal.lighten(40%))[#text(size: 8pt)[N]],
    )
  ]
  
  // Leyenda de colores
  #block(fill: softbg, width: 100%, inset: 4pt)[
    #set text(size: 8pt, fill: night2)
    #box(fill: ped-critical. lighten(40%), inset: 2pt, radius: 2pt)[↑ A = Alta]
    #h(0.3em)
    #box(fill: ped-info.lighten(40%), inset: 2pt, radius:  2pt)[↓ B = Baja]
    #h(0.3em)
    #box(fill:  ped-normal. lighten(40%), inset: 2pt, radius: 2pt)[N = Normal]
    #h(0.3em)
    #box(fill:  ped-caution.lighten(30%), inset: 2pt, radius:  2pt)[Variable]
  ]
  
  // Notas al pie
  #block(fill: ped-bg-alt, width: 100%, inset: 5pt)[
    #set text(size: 7pt, fill:  night2)
    #super[a] Puede ser normal, baja o ligeramente elevada. 
    #linebreak()
    #super[b] El tratamiento puede no ser necesario.
    #v(0.3em)
    #text(size: 6.5pt, fill:  night3)[
      *T4* = Tiroxina | *TBG* = Globulina de unión a tiroxina | *TSH* = Hormona estimulante de la tiroides
    ]
  ]
]

#v(0.8em)

// Bibliography
#bibliography("bib.yml", style: "mary-ann-liebert-vancouver")
