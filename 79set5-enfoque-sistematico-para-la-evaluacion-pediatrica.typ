#import "style.typ": *
#import "assets/triangulo-tep.typ": triangle-tep

#show: note-notes.with(
  title: "Enfoque sistemático para la evaluación pediátrica",
  author: "Daniel Soto",
  font: "Ysabeau"
)

= Evaluación inicial
La evaluación inicial ayuda a identificar rápidamente una enfermedad
potencialmente mortal. Si en algún momento se identifica un problema
potencialmente mortal, se inician de inmediato las intervenciones apropiadas y
se activa el sistema de respuesta a emergencias. Si la enfermedad del niño no
amenaza su vida, se continua con el enfoque sistemático @PALS2020.

== Triángulo de evaluación pediátrica

#align(center)[
  #triangle-tep()
]
// Bibliography
#bibliography("bib.yml", style: "mary-ann-liebert-vancouver")

// Tags
#note-tags((
  // Add your tags here, for example:
  // "pediatría", "urgencias", "diagnóstico"
))

// Related notes
#note-related((
  // Add related notes here, for example:
  // (id: "xfoqeb", title: "Líquidos"),
))

// Extra notes
= Notas adicionales
#note-space(height: 4cm, title: "Mis notas y observaciones")
