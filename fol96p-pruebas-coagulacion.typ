#import "style.typ":  *
#import "pediatric-scales.typ": *

#show:  note-notes. with(
  title: "Pruebas de Coagulación",
  author: "Dr. Daniel Soto",
  date: auto,
)

= Pruebas de Coagulación Pediátricas

== INR (Índice Normalizado Internacional)

#block(
  fill: ped-bg-light,
  stroke:  1.5pt + aurora4,
  width:  100%,
  inset: 0pt,
  radius: 6pt,
  clip:  true,
)[
  #block(
    fill: aurora4,
    width:  100%,
    inset: 8pt,
  )[
    #text(weight: "bold", fill: white, size: 12pt)[INR - Valores Normales @HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(ratio)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns: (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table.cell(fill: aurora4)[#text(weight: "bold", fill: white, size: 11pt)[Edad]],
      table. cell(fill: aurora4)[#text(weight: "bold", fill: white, size: 11pt)[Rango]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[RN Término, día 1]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[1.26 (1.15-1.35)]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  11pt)[Día 3 de vida]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size:  11pt)[1.2 (1.05-1.35)]],
      
      table.cell(fill: ped-bg-light)[#text(size:  11pt)[1 mes - 1 año]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size:  11pt)[1 (0.86-1.22)]],
      
      table. cell(fill: ped-bg-alt)[#text(size: 11pt)[1-5 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[1.03 (0.92-1.14)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[6-10 años]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[1.04 (0.87-1.2)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[11-16 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[1.08 (0.97-1.3)]],
    )
  ]
]

== Fibrinógeno

#block(
  fill: ped-bg-light,
  stroke:  1.5pt + frost3,
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
    #text(weight: "bold", fill: white, size: 12pt)[Fibrinógeno - Valores Normales @HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(mg/dL)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns: (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table.cell(fill: frost3)[#text(weight: "bold", fill: white, size: 11pt)[Edad]],
      table. cell(fill: frost3)[#text(weight: "bold", fill: white, size: 11pt)[Rango]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[RN Pretérmino #super[a]]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[243 (150-373)]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  11pt)[RN Término, día 1]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[280 (192-374)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[Día 3 de vida]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[330 (283-401)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[1 mes - 1 año]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[242 (82-383)]],
      
      table.cell(fill: ped-bg-light)[#text(size:  11pt)[1-5 años]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[282 (162-401)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[6-10 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[304 (199-409)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[11-16 años]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[315 (212-433)]],
    )
  ]
]

== Dímero D

#block(
  fill: ped-bg-light,
  stroke:  1.5pt + frost3,
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
    #text(weight: "bold", fill: white, size: 12pt)[Dímero D - Valores Normales @HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(ug/mL)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns: (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table.cell(fill: frost3)[#text(weight: "bold", fill: white, size: 11pt)[Edad]],
      table. cell(fill: frost3)[#text(weight: "bold", fill: white, size: 11pt)[Rango]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  11pt)[RN Término, día 1]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[1.47 (0.47-2.47)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[Día 3 de vida]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[1.34 (0.58-2.74)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[1 mes - 1 año]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[0.22 (0.11-0.42)]],
      
      table.cell(fill: ped-bg-light)[#text(size:  11pt)[1-5 años]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[0.25 (0.09-0.53)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[6-10 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[0.26 (0.1-0.56)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[11-16 años]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[0.27 (0.16-0.39)]],
    )
  ]
]

== Tiempo de Protrombina (TP)

#block(
  fill: ped-bg-light,
  stroke:  1.5pt + frost4,
  width:  100%,
  inset: 0pt,
  radius:  6pt,
  clip: true,
)[
  #block(
    fill:  frost4,
    width: 100%,
    inset: 8pt,
  )[
    #text(weight: "bold", fill: white, size: 12pt)[TP - Valores Normales @HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(segundos)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns:  (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table. cell(fill: frost4)[#text(weight: "bold", fill: white, size: 11pt)[Edad]],
      table.cell(fill: frost4)[#text(weight: "bold", fill: white, size: 11pt)[Rango]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[RN Pretérmino #super[a]]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[13 (10.6-16.2)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[RN Término, día 1]],
      table. cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[15.6 (14.4-16.4)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[Día 3 de vida]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[14.9 (13.5-16.4)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[1 mes - 1 año]],
      table. cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[13.1 (11.5-15.3)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[1-5 años]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[13.3 (12.1-14.5)]],
      
      table.cell(fill: ped-bg-alt)[#text(size: 11pt)[6-10 años]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[13.4 (11.7-15.1)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[11-16 años]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[13.8 (12.7-16.1)]],
    )
  ]
]

#v(0.8em)


== Tiempo de Tromboplastina Parcial Activada

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
    #text(weight: "bold", fill: white, size: 12pt)[TTPa - Valores Normales @HarrietLane2023]
    #h(1fr)
    #text(fill: rgb("#D8DEE9"), size: 12pt)[(segundos)]
  ]
  
  #block(inset: 5pt)[
    #table(
      columns: (1fr, 1fr),
      stroke: 0.8pt + night3,
      inset: 5pt,
      align: (left, center),
      
      table.cell(fill: aurora5)[#text(weight: "bold", fill: white, size: 11pt)[Edad]],
      table. cell(fill: aurora5)[#text(weight: "bold", fill: white, size: 11pt)[Rango]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[RN Pretérmino #super[a,b]]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size:  11pt)[53.6 (27.5-79.4)]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  11pt)[RN Término, día 1]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[38.7 (34.3-44.8)]],
      
      table.cell(fill: ped-bg-light)[#text(size:  11pt)[Día 3 de vida]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size:  11pt)[36.3 (29.5-42.2)]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  11pt)[1 mes - 1 año]],
      table.cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[39.3 (35.1-46.3)]],
      
      table.cell(fill: ped-bg-light)[#text(size:  11pt)[1-5 años]],
      table. cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[37.7 (33.6-43.8)]],
      
      table.cell(fill: ped-bg-alt)[#text(size:  11pt)[6-10 años]],
      table. cell(fill: ped-bg-light)[#text(weight: "semibold", size: 11pt)[37.3 (31.8-43.7)]],
      
      table.cell(fill: ped-bg-light)[#text(size: 11pt)[11-16 años]],
      table.cell(fill: ped-bg-alt)[#text(weight: "semibold", size: 11pt)[39.5 (33.9-46.1)]],
    )
  ]
]

#v(0.8em)

#note-info-box(
  title: "ⓘ Notas",
  [
    #super[a] Recién nacido prematuro (30-36 semanas), día 1.  \
    #super[b] El TTPa en prematuros tiene amplia variabilidad.
  ]
)

#bibliography("bib.yml", style: "mary-ann-liebert-vancouver")

#note-tags((
  "hematología",
  "coagulación",
  "valores-referencia",
  "laboratorio",
  "pediatría",
  "neonatología",
))
