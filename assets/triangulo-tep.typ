#import "@preview/cetz:0.4.2"
#import "../style.typ": *

// Triángulo de evaluación pediátrica
  #let triangle-tep() = {
  cetz.canvas({
    import cetz.draw: *
    
    // Dimensiones del triángulo
    let height = 4
    let base = 4
    
    // Definir colores (nordtheme.com)
    let color-apariencia = rgb("#81A1C1")     // frost3
    let color-circulacion = rgb("#88C0D0")   // aurora4
    let color-respiratorio = rgb("#A3BE8C")    // frost2
    let border-color = rgb("#2E3440")         // night0
    let text-color = rgb("#2E3440")           // night0
    
    // Coordenadas del triángulo equilátero
    let top = (0, height)
    let left = (-base/2, 0)
    let right = (base/2, 0)
    let center = (0, height/3)
    
    // Dibujar tres triángulos rellenos desde el centro
    // Triángulo superior (Apariencia)
    merge-path({
      line(center, top)
      line(top, left)
      line(left, center)
    }, fill: color-apariencia.transparentize(30%), close: true)
    
    // Triángulo inferior izquierdo (Circulación)
    merge-path({
      line(center, left)
      line(left, right)
      line(right, center)
    }, fill: color-respiratorio.transparentize(30%), close: true)
    
    // Triángulo inferior derecho (Esfuerzo respiratorio)
    merge-path({
      line(center, right)
      line(right, top)
      line(top, center)
    }, fill: color-circulacion.transparentize(30%), close: true)
    
    // Dibujar el contorno del triángulo completo
    merge-path({
      line(top, left)
      line(left, right)
      line(right, top)
    }, stroke: (paint: border-color, thickness: 3pt), close: true)

    // Texto en cada vértice
    content(
      (0, height + 0.6),
      [#text(fill: text-color, weight: "bold", size: 10pt)[Apariencia]],
      anchor: "south"
    )

    content(
      (-base/2 - 0.3, -0.3),
      [#text(fill: text-color, weight: "bold", size: 10pt)[Circulación]],
      anchor: "east"
    )
    
    content(
      (base/2 + 0.3, -0.3),
      [#text(fill: text-color, weight: "bold", size: 10pt)[Esfuerzo\ respiratorio]],
      anchor: "west"
    )
    
    // Lado izquierdo (Apariencia)
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
    
    // Lado derecho (Respiración)
    let mid-right = (
      (top.at(0) + right.at(0)) / 2 + 1.2,
      (top.at(1) + right.at(1)) / 2
    )
    content(
      mid-right,
      [#text(fill: night2, size: 8pt, style: "italic")[
        Ruidos respiratorios\
        Posición de olfateo\ 
        Retracciones\
        Aleteo nasal
      ]],
      anchor: "west"
    )
    
    // Lado inferior (Circulación)
    let mid-bottom = (
      (left.at(0) + right.at(0)) / 2,
      (left.at(1) + right.at(1)) / 2 - 0.8
    )
    content(
      mid-bottom,
      [#text(fill: night2, size: 8pt, style: "italic")[
        Pálidez • Piel marmórea • Cianosis
      ]],
      anchor: "north"
    )
  })
}
