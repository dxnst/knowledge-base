// Pediatric Reference Scales Template
// Usage: #import "pediatric-scales.typ":  *
// Extends the base style. typ with specialized pediatric components

#import "style.typ": *

// ══════════════════════════════════════════════════════════════════════════════
// PEDIATRIC COLOR SCHEME - Nord Light Extended
// ══════════════════════════════════════════════════════════════════════════════

#let ped-normal = rgb("#A3BE8C")      // aurora4 - Verde para valores normales
#let ped-caution = rgb("#EBCB8B")     // aurora3 - Amarillo para precaución
#let ped-warning = rgb("#D08770")     // aurora2 - Naranja para alerta
#let ped-critical = rgb("#BF616A")    // aurora1 - Rojo para crítico
#let ped-info = rgb("#88C0D0")        // frost2 - Azul para información
#let ped-header = rgb("#5E81AC")      // frost4 - Azul oscuro para encabezados
#let ped-bg-light = rgb("#ECEFF4")    // snow0 - Fondo claro
#let ped-bg-alt = rgb("#E5E9F0")      // snow1 - Fondo alternativo

// ══════════════════════════════════════════════════════════════════════════════
// ESCALA DE REFERENCIA PEDIÁTRICA - Componente Principal
// ══════════════════════════════════════════════════════════════════════════════

#let ped-reference-scale(
  title: "Escala de Referencia",
  age-groups: (),           // Array de grupos etarios
  parameters: (),           // Array de parámetros a medir
  values: (),               // Matriz de valores [fila][columna]
  units: "",                // Unidades de medida
  source: none,             // Fuente bibliográfica
  notes: none,              // Notas adicionales
  color-coding: false,      // Activar código de colores automático
) = {
  let col-count = age-groups.len() + 1
  
  // Construir encabezado
  let header-row = (
    table. cell(fill: ped-header)[
      #text(weight: "bold", fill: white, size: 9pt)[Parámetro]
    ],
  ) + age-groups.map(age => 
    table.cell(fill: ped-header)[
      #text(weight:  "bold", fill:  white, size: 9pt)[#age]
    ]
  )
  
  // Construir filas de datos
  let data-rows = ()
  for (i, param) in parameters.enumerate() {
    let row = (
      table. cell(fill: ped-bg-light)[
        #text(weight:  "semibold", fill:  night0, size: 9pt)[#param]
      ],
    )
    for (j, val) in values.at(i).enumerate() {
      row. push(
        table. cell(fill: if calc.odd(i) { ped-bg-alt } else { ped-bg-light })[
          #text(fill: night0, size: 9pt)[#val]
        ]
      )
    }
    data-rows += row
  }
  
  block(
    fill:  ped-bg-light,
    stroke: 1.5pt + ped-header,
    width: 100%,
    inset:  0pt,
    radius:  6pt,
    clip: true,
  )[
    // Título
    #block(
      fill:  ped-header,
      width: 100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size: 11pt)[⚒ #title]
      #if units != "" [
        #h(1fr)
        #text(fill: rgb("#D8DEE9"), size: 9pt)[(#units)]
      ]
    ]
    
    // Tabla principal
    #block(inset: 6pt)[
      #table(
        columns: (auto,) + (1fr,) * age-groups.len(),
        stroke: 0.8pt + night3,
        inset: 5pt,
        align: center + horizon,
        .. header-row,
        ..data-rows,
      )
    ]
    
    // Notas y fuente
    #if notes != none or source != none [
      #block(
        fill: ped-bg-alt,
        width: 100%,
        inset:  6pt,
      )[
        #if notes != none [
          #text(size: 8pt, style: "italic", fill: night2)[📋 #notes]
        ]
        #if source != none [
          #if notes != none [ #linebreak() ]
          #text(size:  7pt, fill: night3)[Fuente: #source]
        ]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// ESCALA CON CÓDIGO DE COLORES (para rangos normal/alerta/crítico)
// ══════════════════════════════════════════════════════════════════════════════

#let ped-color-scale(
  title:  "Escala con Rangos",
  rows: (),  // Array de (label, value, level) donde level:  "normal", "caution", "warning", "critical"
  units: "",
  source: none,
) = {
  let get-color(level) = {
    if level == "normal" { ped-normal }
    else if level == "caution" { ped-caution }
    else if level == "warning" { ped-warning }
    else if level == "critical" { ped-critical }
    else { ped-bg-light }
  }
  
  let get-icon(level) = {
    if level == "normal" { "✓" }
    else if level == "caution" { "◐" }
    else if level == "warning" { "⚠" }
    else if level == "critical" { "⚡" }
    else { "•" }
  }
  
  block(
    fill:  ped-bg-light,
    stroke:  1.5pt + ped-header,
    width:  100%,
    inset: 0pt,
    radius: 6pt,
    clip:  true,
  )[
    #block(
      fill: ped-header,
      width: 100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size: 11pt)[◈ #title]
      #if units != "" [
        #h(1fr)
        #text(fill: rgb("#D8DEE9"), size: 9pt)[(#units)]
      ]
    ]
    
    #block(inset: 6pt)[
      #table(
        columns:  (1fr, auto, auto),
        stroke: 0.8pt + night3,
        inset: 5pt,
        align: (left, center, center),
        
        table.cell(fill: ped-header)[#text(weight: "bold", fill: white, size: 9pt)[Categoría]],
        table.cell(fill: ped-header)[#text(weight: "bold", fill: white, size:  9pt)[Valor]],
        table.cell(fill: ped-header)[#text(weight:  "bold", fill:  white, size: 9pt)[Estado]],
        
        .. rows. map(row => (
          table.cell(fill: ped-bg-light)[#text(fill: night0, size: 9pt)[#row. at(0)]],
          table.cell(fill: ped-bg-alt)[#text(weight: "semibold", fill: night0, size: 9pt)[#row.at(1)]],
          table.cell(fill: get-color(row. at(2)))[
            #text(fill: night0, size: 9pt)[#get-icon(row. at(2))]
          ],
        )).flatten(),
      )
    ]
    
    // Leyenda
    #block(
      fill:  ped-bg-alt,
      width: 100%,
      inset:  5pt,
    )[
      #set text(size: 7pt, fill: night2)
      #box(fill: ped-normal, inset: 2pt, radius: 2pt)[Normal]
      #box(fill: ped-caution, inset: 2pt, radius: 2pt)[Precaución]
      #box(fill:  ped-warning, inset: 2pt, radius: 2pt)[Alerta]
      #box(fill: ped-critical, inset: 2pt, radius: 2pt)[Crítico]
      #if source != none [
        #h(1fr)
        #text(size: 7pt, fill: night3)[#source]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// SIGNOS VITALES POR EDAD
// ══════════════════════════════════════════════════════════════════════════════

#let ped-vital-signs(
  title: "Signos Vitales por Edad",
  data: (),  // Array de (edad, FC, FR, PAS, PAD, Temp)
  source: none,
) = {
  block(
    fill:  ped-bg-light,
    stroke: 1.5pt + frost4,
    width:  100%,
    inset: 0pt,
    radius: 6pt,
    clip:  true,
  )[
    #block(
      fill:  frost4,
      width: 100%,
      inset:  8pt,
    )[
      #text(weight:  "bold", fill:  white, size: 11pt)[♥ #title]
    ]
    
    #block(inset: 4pt)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        stroke: 0.8pt + night3,
        inset:  4pt,
        align: center + horizon,
        
        table.cell(fill: frost4)[#text(weight: "bold", fill: white, size: 8pt)[Edad]],
        table.cell(fill: aurora1. lighten(30%))[#text(weight: "bold", fill: night0, size: 8pt)[FC\ (lpm)]],
        table.cell(fill: frost2)[#text(weight:  "bold", fill:  night0, size: 8pt)[FR\ (rpm)]],
        table.cell(fill: aurora2.lighten(20%))[#text(weight: "bold", fill: night0, size: 8pt)[PAS\ (mmHg)]],
        table.cell(fill: aurora3)[#text(weight:  "bold", fill:  night0, size:  8pt)[PAD\ (mmHg)]],
        
        ..data.map(row => (
          table.cell(fill: ped-bg-light)[#text(weight: "semibold", fill: night0, size: 8pt)[#row.at(0)]],
          table.cell(fill: aurora1.lighten(70%))[#text(fill: night0, size: 8pt)[#row.at(1)]],
          table.cell(fill: frost2.lighten(50%))[#text(fill: night0, size: 8pt)[#row.at(2)]],
          table.cell(fill: aurora2.lighten(60%))[#text(fill: night0, size: 8pt)[#row.at(3)]],
          table.cell(fill: aurora3.lighten(40%))[#text(fill: night0, size: 8pt)[#row.at(4)]],
        )).flatten(),
      )
    ]
    
    #if source != none [
      #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
        #text(size: 7pt, fill: night3)[Fuente: #source]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// ESCALA DE PUNTUACIÓN (ej:  APGAR, Glasgow Pediátrico)
// ══════════════════════════════════════════════════════════════════════════════

#let ped-scoring-scale(
  title: "Escala de Puntuación",
  criteria: (),      // Array de (criterio, 0, 1, 2) o (criterio, valores...)
  max-score: auto,
  interpretation: (), // Array de (rango, significado, level)
  source: none,
) = {
  let score-cols = if criteria.len() > 0 { criteria.at(0).len() - 1 } else { 3 }
  
  block(
    fill:  ped-bg-light,
    stroke: 1.5pt + aurora5,
    width: 100%,
    inset:  0pt,
    radius: 6pt,
    clip: true,
  )[
    #block(
      fill: aurora5,
      width: 100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size: 11pt)[★ #title]
    ]
    
    #block(inset: 5pt)[
      #table(
        columns: (1.2fr,) + (1fr,) * score-cols,
        stroke: 0.8pt + night3,
        inset: 4pt,
        align: center + horizon,
        
        table.cell(fill: aurora5)[#text(weight: "bold", fill: white, size: 8pt)[Criterio]],
        .. range(score-cols).map(i => 
          table.cell(fill: aurora5.lighten(20%))[
            #text(weight: "bold", fill: night0, size: 8pt)[#i pts]
          ]
        ),
        
        ..criteria.map(row => (
          table.cell(fill: ped-bg-light)[
            #text(weight: "semibold", fill: night0, size: 8pt)[#row.at(0)]
          ],
          .. row.slice(1).map(val => 
            table.cell(fill: ped-bg-alt)[
              #text(fill: night0, size: 8pt)[#val]
            ]
          ),
        )).flatten(),
      )
    ]
    
    #if interpretation. len() > 0 [
      #block(fill: ped-bg-alt, width: 100%, inset: 5pt)[
        #text(weight: "bold", fill: night0, size: 8pt)[Interpretación:]
        #v(0.2em)
        #table(
          columns:  (auto, 1fr, auto),
          stroke: 0.5pt + night3,
          inset:  3pt,
          align: (center, left, center),
          
          .. interpretation.map(row => {
            let bg = if row.at(2) == "normal" { ped-normal }
                     else if row.at(2) == "caution" { ped-caution }
                     else if row.at(2) == "warning" { ped-warning }
                     else { ped-critical }
            (
              table.cell(fill: bg)[#text(weight:  "bold", fill: night0, size: 8pt)[#row.at(0)]],
              table.cell(fill: ped-bg-light)[#text(fill: night0, size: 8pt)[#row.at(1)]],
              table.cell(fill: bg)[#text(size: 8pt)[●]],
            )
          }).flatten(),
        )
      ]
    ]
    
    #if source != none [
      #block(fill: softbg, width: 100%, inset: 4pt)[
        #text(size: 7pt, fill:  night3)[Fuente: #source]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// PERCENTILES / CURVAS DE CRECIMIENTO
// ══════════════════════════════════════════════════════════════════════════════

#let ped-percentile-table(
  title:  "Tabla de Percentiles",
  parameter: "Peso",
  ages: (),
  p3: (),
  p15: (),
  p50: (),
  p85: (),
  p97: (),
  units: "kg",
  sex: "ambos",  // "M", "F", "ambos"
  source: none,
) = {
  let sex-icon = if sex == "M" { "♂" } else if sex == "F" { "♀" } else { "⚥" }
  let sex-color = if sex == "M" { frost3 } else if sex == "F" { aurora5 } else { frost4 }
  
  block(
    fill: ped-bg-light,
    stroke: 1.5pt + sex-color,
    width: 100%,
    inset: 0pt,
    radius: 6pt,
    clip: true,
  )[
    #block(
      fill: sex-color,
      width:  100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size: 11pt)[#sex-icon #title - #parameter]
      #h(1fr)
      #text(fill: rgb("#D8DEE9"), size: 9pt)[(#units)]
    ]
    
    #block(inset: 5pt)[
      #table(
        columns:  (auto,) + (1fr,) * ages.len(),
        stroke: 0.8pt + night3,
        inset: 4pt,
        align:  center + horizon,
        
        table. cell(fill: sex-color)[#text(weight: "bold", fill: white, size: 8pt)[Percentil]],
        .. ages.map(age => 
          table.cell(fill: sex-color. lighten(30%))[
            #text(weight: "bold", fill: night0, size: 8pt)[#age]
          ]
        ),
        
        table.cell(fill: ped-critical. lighten(40%))[#text(weight: "bold", size: 8pt)[P3]],
        .. p3.map(v => table.cell(fill: ped-critical. lighten(60%))[#text(size: 8pt)[#v]]),
        
        table.cell(fill: ped-warning.lighten(40%))[#text(weight: "bold", size: 8pt)[P15]],
        ..p15.map(v => table.cell(fill: ped-warning.lighten(60%))[#text(size: 8pt)[#v]]),
        
        table.cell(fill: ped-normal.lighten(20%))[#text(weight: "bold", size: 8pt)[P50]],
        ..p50.map(v => table.cell(fill: ped-normal.lighten(40%))[#text(size: 8pt)[#v]]),
        
        table.cell(fill: ped-warning.lighten(40%))[#text(weight: "bold", size: 8pt)[P85]],
        ..p85.map(v => table.cell(fill: ped-warning.lighten(60%))[#text(size: 8pt)[#v]]),
        
        table.cell(fill: ped-critical. lighten(40%))[#text(weight: "bold", size: 8pt)[P97]],
        ..p97.map(v => table.cell(fill: ped-critical.lighten(60%))[#text(size: 8pt)[#v]]),
      )
    ]
    
    #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
      #set text(size: 7pt, fill:  night2)
      #box(fill:  ped-normal. lighten(40%), inset: 2pt, radius:  2pt)[P50:  Normal]
      #box(fill: ped-warning.lighten(60%), inset: 2pt, radius:  2pt)[P15/P85: Vigilar]
      #box(fill: ped-critical.lighten(60%), inset: 2pt, radius: 2pt)[P3/P97: Evaluar]
      #if source != none [
        #h(1fr)
        #text[#source]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// DOSIS PEDIÁTRICAS POR PESO
// ══════════════════════════════════════════════════════════════════════════════

#let ped-dosing-table(
  drug: "Medicamento",
  dose-per-kg: "",
  max-dose: "",
  frequency: "",
  route: "",
  weights: (),       // Array de pesos en kg
  doses: (),         // Array de dosis calculadas
  notes: none,
  source:  none,
) = {
  block(
    fill:  ped-bg-light,
    stroke: 1.5pt + frost3,
    width:  100%,
    inset: 0pt,
    radius: 6pt,
    clip:  true,
  )[
    #block(
      fill:  frost3,
      width: 100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size:  11pt)[💊 #drug]
    ]
    
    #block(fill: frost2. lighten(60%), width: 100%, inset: 6pt)[
      #table(
        columns:  (1fr, 1fr, 1fr, 1fr),
        stroke: none,
        inset:  3pt,
        align: left,
        
        [#text(weight: "bold", size: 8pt)[Dosis: ] #text(size: 8pt)[#dose-per-kg]],
        [#text(weight: "bold", size: 8pt)[Máx:] #text(size: 8pt)[#max-dose]],
        [#text(weight:  "bold", size:  8pt)[Frec:] #text(size: 8pt)[#frequency]],
        [#text(weight: "bold", size: 8pt)[Vía:] #text(size: 8pt)[#route]],
      )
    ]
    
    #block(inset: 5pt)[
      #table(
        columns:  (1fr,) * weights.len(),
        stroke: 0.8pt + night3,
        inset: 4pt,
        align: center + horizon,
        
        .. weights.map(w => 
          table.cell(fill: frost3.lighten(40%))[
            #text(weight: "bold", fill: night0, size: 8pt)[#w kg]
          ]
        ),
        
        ..doses.map(d => 
          table.cell(fill: ped-bg-alt)[
            #text(fill: night0, size: 9pt, weight: "semibold")[#d]
          ]
        ),
      )
    ]
    
    #if notes != none [
      #block(fill: aurora3. lighten(50%), width: 100%, inset: 5pt)[
        #text(size: 8pt, style: "italic", fill: night1)[⚠ #notes]
      ]
    ]
    
    #if source != none [
      #block(fill:  ped-bg-alt, width: 100%, inset:  4pt)[
        #text(size: 7pt, fill: night3)[Fuente: #source]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// VALORES DE LABORATORIO PEDIÁTRICOS
// ══════════════════════════════════════════════════════════════════════════════

#let ped-lab-values(
  title:  "Valores de Laboratorio",
  category: "Hematología",
  values: (),  // Array de (parámetro, rango-RN, rango-lactante, rango-niño, unidad)
  source: none,
) = {
  block(
    fill:  ped-bg-light,
    stroke: 1.5pt + aurora4,
    width:  100%,
    inset: 0pt,
    radius: 6pt,
    clip:  true,
  )[
    #block(
      fill:  aurora4,
      width: 100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size:  11pt)[🔬 #title]
      #h(1fr)
      #text(fill: rgb("#D8DEE9"), size: 9pt)[#category]
    ]
    
    #block(inset: 5pt)[
      #table(
        columns: (1.5fr, 1fr, 1fr, 1fr, auto),
        stroke: 0.8pt + night3,
        inset: 4pt,
        align: center + horizon,
        
        table.cell(fill: aurora4)[#text(weight: "bold", fill: white, size: 8pt)[Parámetro]],
        table.cell(fill: aurora4.lighten(20%))[#text(weight: "bold", fill: night0, size: 8pt)[RN]],
        table.cell(fill: aurora4.lighten(30%))[#text(weight: "bold", fill: night0, size: 8pt)[Lactante]],
        table.cell(fill: aurora4.lighten(40%))[#text(weight: "bold", fill: night0, size: 8pt)[Niño]],
        table. cell(fill: aurora4)[#text(weight:  "bold", fill:  white, size: 8pt)[Unidad]],
        
        ..values.map(row => (
          table.cell(fill: ped-bg-light)[#text(weight: "semibold", fill: night0, size: 8pt)[#row.at(0)]],
          table.cell(fill: aurora4.lighten(70%))[#text(fill: night0, size: 8pt)[#row.at(1)]],
          table.cell(fill: aurora4.lighten(75%))[#text(fill: night0, size: 8pt)[#row.at(2)]],
          table.cell(fill: aurora4.lighten(80%))[#text(fill: night0, size: 8pt)[#row.at(3)]],
          table.cell(fill: ped-bg-alt)[#text(fill: night2, size: 7pt)[#row.at(4)]],
        )).flatten(),
      )
    ]
    
    #if source != none [
      #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
        #text(size:  7pt, fill: night3)[Fuente: #source]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// QUICK REFERENCE CARD (Tarjeta de referencia rápida)
// ══════════════════════════════════════════════════════════════════════════════

#let ped-quick-ref(
  title:  "Referencia Rápida",
  items: (),  // Array de (label, value, unit)
  color: frost2,
) = {
  block(
    fill:  color. lighten(60%),
    stroke: 1.2pt + color,
    width:  100%,
    inset: 6pt,
    radius: 5pt,
  )[
    #text(weight: "bold", fill: night0, size: 10pt)[⚡ #title]
    #v(0.3em)
    #table(
      columns:  (1fr, auto, auto),
      stroke: none,
      inset: 2pt,
      align: (left, right, left),
      
      .. items.map(item => (
        text(fill: night1, size: 9pt)[#item.at(0)],
        text(weight: "bold", fill: night0, size: 9pt)[#item.at(1)],
        text(fill: night2, size: 8pt)[#item.at(2)],
      )).flatten(),
    )
  ]
}
