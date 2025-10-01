#import "style.typ": *

#show: note-notes.with(
  title: "{{title}}",
  author: "Daniel Soto",
  font: "Ysabeau"
)

= {{title}}

// Bibliography
#bibliography("bib.yml", style: "mary-ann-liebert-vancouver")

// Extra notes
= Notas adicionales
#note-space(height: 8cm, title: "Mis notas y observaciones")
