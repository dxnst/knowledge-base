// Notes template
// Usage: #import "style.typ": *

#let note-notes(
  title: "My Notes",
  author: "Your Name",
  date: auto,
  font: "Ysabeau",
  body
) = {
  
  // Document settings
  set text(font: font, size: 11pt, fill: black, lang: "es")
  set page(
    paper: "us-letter",
    margin: (x: 2cm, y: 2cm),
    columns: 2,
    header: [
      #set text(size: 9pt, fill: black)
      #smallcaps[Notas de #author]
      #h(1fr)
      #if date == auto {
        datetime.today().display()
      } else {
        date
      }
    ],
    footer: [
      #set text(size: 9pt, fill: black)
      #align(center)[#context counter(page).display()]
    ]
  )

  set heading(numbering: "1.1")
  set par(justify: true, leading: 0.65em)

  // Title
  align(center)[
    #text(size: 18pt, weight: "bold", fill: black)[#title]
    #v(1em)
  ]

  body
}

// Color palette - Nord inspired
#let frost1 = rgb("#8FBCBB")
#let frost2 = rgb("#88C0D0")
#let frost3 = rgb("#81A1C1")
#let frost4 = rgb("#5E81AC")
#let aurora1 = rgb("#BF616A")
#let aurora2 = rgb("#D08770")
#let aurora3 = rgb("#EBCB8B")
#let aurora4 = rgb("#A3BE8C")
#let aurora5 = rgb("#B48EAD")
#let softbg = rgb("#E5E9F0")
#let white = rgb("#FFFFFF")
#let night0 = rgb("#2E3440")
#let night1 = rgb("#3B4252")
#let night2 = rgb("#434C5E")
#let night3 = rgb("#4C566A")

// Function to parse title with inline references
#let parse-title-with-refs(title-str) = {
  if type(title-str) != str {
    return (title: title-str, refs: ())
  }
  
  let parts = title-str.split("@")
  if parts.len() == 1 {
    return (title: title-str, refs: ())
  }
  
  let title-part = parts.at(0)
  let ref-parts = parts.slice(1).map(ref => ref.trim())
  
  return (title: title-part, refs: ref-parts)
}

// Note component functions
#let note-box(
  content,
  color: frost2,
  stroke-color: night2,
  title: none,
  icon: none
) = {
  block(
    fill: color,
    stroke: stroke-color,
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    [
      #if title != none [
        #set text(weight: "bold", fill: black)
        #if icon != none [#icon ] #title
        #linebreak()
      ]
      #set text(weight: "regular", fill: black)
      #content
    ]
  )
}

#let note-info-box(content, title: "ℹ️ Info") = {
  note-box(content, color: frost2, stroke-color: night2, title: title)
}

#let note-warning-box(content, title: "⚠️ Atención") = {
  note-box(content, color: aurora2, stroke-color: night1, title: title)
}

#let note-tip-box(content, title: "💡 Tip") = {
  note-box(content, color: aurora3, stroke-color: night1, title: title)
}

#let note-success-box(content, title: "✅ Importante") = {
  note-box(content, color: aurora4, stroke-color: night3, title: title)
}

#let note-danger-box(content, title: "🚨 Cuidado") = {
  note-box(content, color: aurora1, stroke-color: night1, title: title)
}

#let note-table(
  columns,
  data,
  header-color: frost1,
  body-color: softbg,
  stroke-color: night3,
  title: none,
  caption: none
) = {
  let parsed = parse-title-with-refs(title)
  let table-title = if parsed.title != none {
    if parsed.refs.len() > 0 {
    let ref-citations = parsed.refs.map(ref => cite(label(ref), form: "normal")).join(",")
      [#parsed.title #ref-citations]
    } else {
      parsed.title
    }
  } else {
    none
  }
  
  let table-content = if table-title != none {
    (table.cell(colspan: columns.len(), align: center)[
      #text(weight: "bold", fill: black)[#table-title]
    ],) + data
  } else {
    data
  }
  
  block(
    fill: header-color,
    stroke: stroke-color,
    width: 100%,
    inset: 6pt,
    radius: 4pt,
    [
      #align(center)[
        #table(
          columns: columns,
          stroke: 1.1pt + stroke-color,
          fill: (x, y) => if y <= (if table-title != none { 1 } else { 0 }) { 
            header-color 
          } else { 
            body-color 
          },
          inset: 3pt,
          align: center + horizon,
          ..table-content
        )
      ]
      #if caption != none [
        #v(0.2em)
        #text(size: 8pt, style: "italic", fill: night2)[#caption]
      ]
    ]
  )
}

// Updated formula-box with better line breaking
#let note-formula-box(name, equation, description: "", use-math: true) = {
  note-box(
    [
      #set text(weight: "bold", fill: black, size: 10pt)
      #name
      #linebreak()
      #set text(weight: "regular", fill: black, size: 10pt)
      #if use-math [
        #set math.equation(block: true, numbering: none)
        $ #equation $
      ] else [
        #text(style: "italic")[#equation]
      ]
      #if description != "" [
        #v(0.3em)
        #text(style: "italic", size: 8pt, fill: night2)[#description]
      ]
    ],
    color: aurora3,
    stroke-color: night1,
    icon: "🧮"
  )
}

// Alternative formula box for text-based formulas
#let note-formula-box-text(name, formula-text, description: "") = {
  note-formula-box(name, formula-text, description: description, use-math: false)
}

#let note-normal-range(parameter, range, unit: "") = {
  note-box(
    [
      #set text(weight: "bold", fill: black)
      #parameter: #range #unit
    ],
    color: frost2,
    stroke-color: night2,
    icon: "📊"
  )
}

#let note-space(height: 8cm, title: "Notas adicionales") = {
  block(
    height: height, 
    width: 100%, 
    stroke: night3, 
    inset: 8pt,
    radius: 4pt,
    fill: rgb("#FEFEFE")
  )[
    #text(weight: "bold", fill: night2, size: 10pt)[📝 #title]
    #v(0.5em)
    #text(fill: night1, style: "italic", size: 9pt)[_Espacio para notas, observaciones, o esquemas_]
  ]
}

// Related notes section
#let note-related(notes) = {
  if notes.len() == 0 {
    return
  }
  
  block(
    fill: frost3,
    stroke: night2,
    width: 100%,
    inset: 8pt,
    radius: 4pt,
  )[
    #text(weight: "bold", fill: black, size: 10pt)[🔗 Notas relacionadas]
    #v(0.3em)
    #for note in notes [
      #set text(fill: black, size: 9pt)
      • #note.title (#text(font: "monospace", size: 8pt)[#note.id])
      #linebreak()
    ]
  ]
}

// Tags section
#let note-tags(tags) = {
  if tags.len() == 0 {
    return
  }
  
  block(
    fill: aurora5,
    stroke: night1,
    width: 100%,
    inset: 6pt,
    radius: 4pt,
  )[
    #text(weight: "bold", fill: black, size: 9pt)[🏷️ Etiquetas: ]
    #for (index, tag) in tags.enumerate() [
      #box(
        fill: white,
        inset: (x: 4pt, y: 3pt),
        radius: 2pt,
        stroke: night2,
      )[
        #text(size: 8pt, fill: black)[#tag]
      ]
      #if index < tags.len() - 1 [ ]
    ]
  ]
}

// Quick emoji helpers
#let emoji = (
  info: "ℹ️",
  warning: "⚠️",
  tip: "💡",
  success: "✅",
  danger: "🚨",
  formula: "🧮",
  chart: "📊",
  note: "📝",
  book: "📚",
  star: "⭐",
  heart: "💖",
  fire: "🔥",
  sparkles: "✨"
)
