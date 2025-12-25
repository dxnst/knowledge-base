// Pediatric Medications Template
// Usage: #import "pediatric-meds.typ":   *
// Specialized template for pediatric drug dosing

#import "style.typ":   *
#import "pediatric-scales.typ":  *

// ══════════════════════════════════════════════════════════════════════════════
// MEDICATION COLOR SCHEME
// ══════════════════════════════════════════════════════════════════════════════

#let med-penicillin = rgb("#BF616A")     // aurora1 - Penicilinas
#let med-cephalosporin = rgb("#D08770")  // aurora2 - Cefalosporinas
#let med-macrolide = rgb("#EBCB8B")      // aurora3 - Macrólidos
#let med-aminoglycoside = rgb("#A3BE8C") // aurora4 - Aminoglucósidos
#let med-fluoroquinolone = rgb("#B48EAD") // aurora5 - Fluoroquinolonas
#let med-antiviral = rgb("#88C0D0")      // frost2 - Antivirales
#let med-antifungal = rgb("#81A1C1")     // frost3 - Antifúngicos
#let med-other = rgb("#5E81AC")          // frost4 - Otros

// ══════════════════════════════════════════════════════════════════════════════
// REFERENCE PARSER - Parsea referencias con @ para citaciones
// ══════════════════════════════════════════════════════════════════════════════

#let parse-reference(ref-str) = {
  if ref-str == none {
    return none
  }
  
  if type(ref-str) != str {
    return ref-str
  }
  
  // Buscar patrón @citekey
  let parts = ref-str. split("@")
  if parts.len() == 1 {
    // No hay citación, retornar texto normal
    return ref-str
  }
  
  // Construir contenido con citaciones
  let result = []
  for (i, part) in parts.enumerate() {
    if i == 0 {
      // Texto antes del primer @
      if part.trim() != "" {
        result += [#part]
      }
    } else {
      // Extraer citekey (hasta el primer espacio o fin)
      let space-pos = part.position(" ")
      let citekey = ""
      let rest = ""
      
      if space-pos == none {
        citekey = part. trim()
        rest = ""
      } else {
        citekey = part.slice(0, space-pos).trim()
        rest = part.slice(space-pos)
      }
      
      // Agregar citación y resto del texto
      if citekey != "" {
        result += [#cite(label(citekey), form:  "normal")]
      }
      if rest != "" {
        result += [#rest]
      }
    }
  }
  
  return result
}

// ══════════════════════════════════════════════════════════════════════════════
// MEDICATION CARD - Componente Principal Unificado
// ══════════════════════════════════════════════════════════════════════════════

#let med-card(
  family: "Familia",
  subfamily: none,
  code: none,
  name: "Medicamento",
  concentration: "",
  indications: (),           // Array de diccionarios con indicaciones
  notes: none,
  color: med-other,
) = {
  block(
    fill: color. lighten(70%),
    stroke: 1.5pt + color,
    width: 100%,
    inset: 0pt,
    radius: 6pt,
    clip: true,
  )[
    // ══════════ HEADER ══════════
    #block(
      fill:  color,
      width: 100%,
      inset: 8pt,
    )[
      #grid(
        columns:  (1fr, auto),
        align: (left, right),
        [
          #text(weight: "bold", fill: white, size: 13pt)[#name]
          #if subfamily != none [
            #linebreak()
            #text(fill: white. darken(10%), size: 9pt, style: "italic")[#family - #subfamily]
          ] else [
            #linebreak()
            #text(fill: white. darken(10%), size: 9pt, style: "italic")[#family]
          ]
        ],
        [
          #if code != none [
            #box(
              fill:  white. transparentize(80%),
              inset: (x: 6pt, y: 4pt),
              radius: 4pt,
            )[
              #text(weight: "bold", fill: white, size:  11pt)[#code]
            ]
          ]
        ]
      )
    ]
    
    // ══════════ CONCENTRACIÓN ══════════
    #if concentration != "" [
      #block(
        fill:  color.lighten(50%),
        width: 100%,
        inset:  6pt,
      )[
        #text(weight: "semibold", fill:  night0, size: 10pt)[💊 Concentración:  ]
        #text(fill: night0, size: 10pt, weight: "bold")[#concentration]
      ]
    ]
    
    // ══════════ INDICACIONES ══════════
    #block(inset: 6pt)[
      #for (i, indication) in indications.enumerate() {
        let condition = indication.at("condition", default: "")
        let dose = indication.at("dose", default: "")
        let max-dose = indication.at("max-dose", default: none)
        let frequency = indication.at("frequency", default: "")
        let duration = indication.at("duration", default: none)
        let route = indication.at("route", default: "VO")
        let reference = indication.at("reference", default: none)
        let ind-notes = indication.at("notes", default: none)
        let severity = indication.at("severity", default: "standard")
        
        let severity-color = if severity == "severe" { 
          aurora1.lighten(50%) 
        } else if severity == "moderate" { 
          aurora2.lighten(40%) 
        } else { 
          ped-bg-alt 
        }
        
        let severity-icon = if severity == "severe" { 
          "⚡" 
        } else if severity == "moderate" { 
          "⚠" 
        } else { 
          "•" 
        }
        
        // Parsear referencia para citaciones
        let parsed-ref = parse-reference(reference)
        
        block(
          fill:  severity-color,
          stroke: 0.5pt + night3,
          width:  100%,
          inset: 5pt,
          radius: 3pt,
        )[
          // Condición + Referencia
          #grid(
            columns:  (1fr, auto),
            align:  (left, right),
            [#text(weight: "bold", fill: night0, size: 10pt)[#severity-icon #condition]],
            [
              #if parsed-ref != none [
                #box(
                  fill: frost3.lighten(40%),
                  inset: (x:  4pt, y: 2pt),
                  radius:  2pt,
                )[
                  #text(size: 7pt, fill: night1)[#parsed-ref]
                ]
              ]
            ]
          )
          
          #v(0.3em)
          
          // Dosis en línea compacta
          #text(size: 9pt, fill: night0)[
            #text(weight: "bold")[#dose]
            #if max-dose != none [
              #text(fill: night2)[ · Máx: ]#text(fill: aurora1, weight: "semibold")[#max-dose]
            ]
            #text(fill: night2)[ · ]#frequency
            #text(fill: night2)[ · ]#route
            #if duration != none [
              #text(fill: night2)[ · ]#duration
            ]
          ]
          
          #if ind-notes != none [
            #v(0.2em)
            #text(size: 8pt, style: "italic", fill: night2)[💡 #ind-notes]
          ]
        ]
        
        if i < indications.len() - 1 {
          v(0.3em)
        }
      }
    ]
    
    // ══════════ NOTAS GENERALES ══════════
    #if notes != none [
      #block(
        fill: aurora3. lighten(60%),
        width: 100%,
        inset:  5pt,
      )[
        #text(size: 8pt, fill: night1)[📋 #notes]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// COMPACT MEDICATION TABLE - Tabla compacta para múltiples medicamentos
// ══════════════════════════════════════════════════════════════════════════════

#let med-table(
  title: "Medicamentos",
  medications: (),  // Array de (código, nombre, dosis, máximo, posología)
  condition: "",
  color: med-other,
  reference: none,
) = {
  // Parsear referencia para citaciones
  let parsed-ref = parse-reference(reference)
  
  block(
    fill:  ped-bg-light,
    stroke:  1.5pt + color,
    width:  100%,
    inset: 0pt,
    radius: 6pt,
    clip: true,
  )[
    #block(
      fill:  color,
      width: 100%,
      inset:  8pt,
    )[
      #text(weight: "bold", fill: white, size: 11pt)[💊 #title]
      #if condition != "" [
        #h(1fr)
        #text(fill: white.darken(10%), size: 9pt)[#condition]
      ]
    ]
    
    #block(inset: 5pt)[
      #table(
        columns:  (auto, 1fr, auto, auto),
        stroke: 0.8pt + night3,
        inset: 4pt,
        align: (center, left, center, center),
        
        table. cell(fill: color. lighten(30%))[#text(weight: "bold", fill: night0, size: 8pt)[Cód.]],
        table. cell(fill: color.lighten(30%))[#text(weight: "bold", fill: night0, size: 8pt)[Medicamento]],
        table.cell(fill: color.lighten(30%))[#text(weight: "bold", fill: night0, size: 8pt)[Dosis]],
        table.cell(fill: color.lighten(30%))[#text(weight: "bold", fill: night0, size: 8pt)[Posología]],
        
        .. medications.map(med => (
          table.cell(fill: ped-bg-alt)[#text(size: 8pt, weight: "bold")[#med.at(0)]],
          table. cell(fill: ped-bg-light)[#text(size: 9pt)[#med.at(1)]],
          table.cell(fill: ped-bg-alt)[#text(size: 9pt, weight: "semibold")[#med.at(2)]],
          table.cell(fill: ped-bg-light)[#text(size: 8pt)[#med.at(3)]],
        )).flatten(),
      )
    ]
    
    #if parsed-ref != none [
      #block(fill: ped-bg-alt, width: 100%, inset: 4pt)[
        #text(size: 7pt, fill: night3)[Ref:  #parsed-ref]
      ]
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// DOSE CALCULATOR - Calculadora por peso
// ══════════════════════════════════════════════════════════════════════════════

#let med-dose-calc(
  name:  "Medicamento",
  dose-per-kg:  "",
  concentration: "",
  weights: (5, 10, 15, 20, 25, 30),
  doses: (),
  max-dose: none,
  frequency: "",
  color: med-other,
) = {
  block(
    fill:  ped-bg-light,
    stroke:  1.5pt + color,
    width: 100%,
    inset: 0pt,
    radius: 6pt,
    clip: true,
  )[
    #block(
      fill: color,
      width: 100%,
      inset: 8pt,
    )[
      #text(weight: "bold", fill: white, size: 11pt)[📐 #name]
      #h(1fr)
      #text(fill: white. darken(10%), size: 9pt)[#dose-per-kg]
    ]
    
    #block(fill: color. lighten(60%), width: 100%, inset: 5pt)[
      #text(size: 9pt, fill: night0)[
        *Concentración: * #concentration
        #h(1em)
        *Posología:* #frequency
        #if max-dose != none [
          #h(1em)
          *Máx:* #max-dose
        ]
      ]
    ]
    
    #block(inset: 5pt)[
      #table(
        columns: (1fr,) * weights.len(),
        stroke: 0.8pt + night3,
        inset: 4pt,
        align: center + horizon,
        
        .. weights.map(w => 
          table.cell(fill: color.lighten(40%))[
            #text(weight: "bold", fill: night0, size: 9pt)[#w kg]
          ]
        ),
        
        .. doses.map(d => 
          table.cell(fill: ped-bg-alt)[
            #text(fill: night0, size: 10pt, weight: "semibold")[#d]
          ]
        ),
      )
    ]
  ]
}

// ══════════════════════════════════════════════════════════════════════════════
// FAMILY COLORS HELPER
// ══════════════════════════════════════════════════════════════════════════════

#let get-med-color(family) = {
  if family == "penicilina" or family == "penicillin" { med-penicillin }
  else if family == "cefalosporina" or family == "cephalosporin" { med-cephalosporin }
  else if family == "macrolido" or family == "macrolide" { med-macrolide }
  else if family == "aminoglucosido" or family == "aminoglycoside" { med-aminoglycoside }
  else if family == "fluoroquinolona" or family == "fluoroquinolone" { med-fluoroquinolone }
  else if family == "antiviral" { med-antiviral }
  else if family == "antifungico" or family == "antifungal" { med-antifungal }
  else { med-other }
}
