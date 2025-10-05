#import "@preview/cetz:0.4.2"
#import "../style.typ": *

// Triángulo de Evaluación Pediátrica (TEP)
#let triangle-tep() = {
  cetz.canvas({
    import cetz.draw: *
    
    // Dimensiones del triángulo
    let height = 4
    let base = 4
    
    // Colores Nord
    let triangle-color = rgb("#2E3440")  // night0
    let triangle-color-2 = rgb("#A3BE8C")  // aurora4
    let triangle-color-3 = rgb("#8FBCBB") // frost1
    let text-color = rgb("#2E3440")      // night0
    let bg-color = rgb("#ECEFF4")        // softbg claro
    
    // Coordenadas del triángulo equilátero
    let top = (0, height)
    let left = (-base/2, 0)
    let right = (base/2, 0)
    
    // Dibujar el triángulo
    line(top, left, stroke: (paint: triangle-color, thickness: 3pt))
    line(right, top, stroke: (paint: triangle-color-2, thickness: 3pt))
    line(left, right, stroke: (paint: triangle-color-3, thickness: 4pt))

    // Texto en cada vértice
    // Superior: APARIENCIA
    content(
      (0, height + 0.6),
      [#text(fill: text-color, weight: "bold", size: 10pt)[Apariencia]],
      anchor: "south"
    )
    
    // Izquierda inferior: ESFUERZO RESPIRATORIO
    content(
      (-base/2 - 0.3, -0.3),
      [#text(fill: text-color, weight: "bold", size: 10pt)[Esfuerzo\ respiratorio]],
      anchor: "east"
    )
    
    // Derecha inferior: CIRCULACIÓN (COLOR)
    content(
      (base/2 + 0.3, -0.3),
      [#text(fill: text-color, weight: "bold", size: 10pt)[Circulación\ (Color)]],
      anchor: "west"
    )
    
    // Título en el centro
    content(
      (0, height/2),
      [#text(fill: triangle-color, weight: "bold", size: 8pt)[Triángulo\ evaluación\ pediátrica]],
      anchor: "center"
    )
    
    // Detalles en cada lado
    let mid-left = (
      (top.at(0) + left.at(0)) / 2 - 1.2,
      (top.at(1) + left.at(1)) / 2
    )
    content(
      mid-left,
      [#text(fill: night2, size: 8pt, style: "italic")[
        Tono muscular\ 
        Interacción\ 
        Consuelo\ 
        Mirada\ 
        Habla/llanto
      ]],
      anchor: "east"
    )
    
    // Lado derecho
    let mid-right = (
      (top.at(0) + right.at(0)) / 2 + 1.2,
      (top.at(1) + right.at(1)) / 2
    )
    content(
      mid-right,
      [#text(fill: night2, size: 8pt, style: "italic")[
        Pálido\ 
        Piel marmórea\ 
        Cianosis
      ]],
      anchor: "west"
    )
    
    // Lado inferior
    let mid-bottom = (
      (left.at(0) + right.at(0)) / 2,
      (left.at(1) + right.at(1)) / 2 - 0.8
    )
    content(
      mid-bottom,
      [#text(fill: night2, size: 8pt, style: "italic")[
        Retracciones • Aleteo nasal • Estridor • Quejido
      ]],
      anchor: "north"
    )
  })
}
