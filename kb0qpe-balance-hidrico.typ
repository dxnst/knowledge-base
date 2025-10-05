#import "style.typ": *

#show: note-notes.with(
  title: "Balance hídrico",
  author: "Daniel Soto",
  font: "Ysabeau"
)

= Líquidos de mantenimiento

El método Holliday-Segar es el más utilizado para aproximar el volumen de
líquidos de mantenimiento en niños:

#note-table(
  (auto, auto, auto, auto),
  (
    [*Peso*], [*Volumen*], [*mL/kg/día*], [*mL/kg/h*],
    [Primeros 10 kg], [100 mL], [4.2], [≈4],
    [Segundos 10 kg], [50 mL], [2.1], [≈2], 
    [Por cada kg extra], [20 mL], [0.8], [≈1]
  ),
  title: "Método Holliday-Segar@Holliday1957",
  header-color: frost1,
  stroke-color: night3
)

#note-formula-box-text(
  "Ejemplo de cálculo", 
  "Niño de 25 kg: (10 × 100) + (10 × 50) + (5 × 20) = 1,600 mL/día ≈ 67 mL/h"
)

= Pérdidas de líquidos

== Pérdidas sensibles

En condiciones normales se puede estimar las pérdidas sensibles de la siguiente
manera:

#note-table(
  (auto, auto),
  (
    [*Fuente*], [*Volumen*],
    [Orina], [50 mL/kg/día],
    [Heces], [5 mL/kg/día],
  ),
  title: "Pérdidas sensibles normales@Hellerstein1993",
  header-color: frost2,
  stroke-color: night2
)

=== Pérdidas sensibles anormales

Si las pérdidas anormales pueden ser medidas directamente, estas deben
reemplazarse 1 mL:1 mL. Si no pueden medirse directamente se pueden estimar por
cada episodio de la siguiente manera:

#note-table(
  (auto, auto, auto, auto, auto),
  (
    [*Fuente*], [*Volumen*], [*Na+ (mEq/L)*], [*K+ (mEq/L)*], [*Cl- (mEq/L)*],
    [Vómito], [2 mL/kg], [20-80], [5-20], [100-150],
    [Diarrea], [10 mL/kg], [10-90], [10-80], [10-110],
  ),
  title: "Pérdidas sensibles anormales@Powers2015",
  header-color: aurora3,
  stroke-color: night3
)

== Pérdidas insensibles

En niños sanos, el volumen de pérdidas insensibles es aproximadamente 1/3 del
volumen de los líquidos de mantenimiento del método Holliday-Segar.

#note-table(
  (auto, auto),
  (
    [*Fuente*], [*Volumen*],
    [Piel y sudor], [30 mL/kg/día],
    [Respiración], [15 mL/kg/día],
  ),
  title: "Pérdidas insensibles normales@Hellerstein1993",
  header-color: aurora4,
  stroke-color: night0
)

=== Pérdidas insensibles aumentadas

#note-danger-box[
  Muchos niños hospitalizados presentan mayores pérdidas insensibles que requieren
  ajustes en el cálculo de líquidos de mantenimiento:
]

#note-table(
  (auto, auto),
  (
    [*Condición*], [*Aumento*],
    [Fiebre], [+12% por cada °C arriba de 37],
    [Hiperventilación], [+15-25 mL/kg/día],
  ),
  title: "Pérdidas insensibles anormales@HarrietLane2023",
  header-color: aurora1,
  stroke-color: night1
)

#note-success-box[
  Los niños en ventilación mecánica tienen menores pérdidas insensibles
  respiratorias debido al uso de aire humidificado.
]

= Déficit de líquidos

== Método de medición directa

El método más preciso de determinar el déficit de líquidos toma en cuenta la
diferencia entre el peso antes de la enfermedad y el peso actual:

#note-formula-box-text(
  "Déficit de líquidos (método directo)", 
  "Déficit (L) = Peso previo (kg) - Peso actual (kg)\n\n1 kg de pérdida = 1 L de déficit de líquidos"
)

== Método de estimación clínica

#note-info-box[
  Si no se conoce el peso previo, se puede aproximar el déficit de líquidos a
  partir del porcentaje de deshidratación determinado por valoración clínica:
]

#note-formula-box-text(
  "Déficit de líquidos (método estimado)",
  "Déficit (mL) = Peso actual (kg) × % Deshidratación × 10\n\nRegla práctica: 1% deshidratación = 10 mL/kg de déficit"
)

#note-table(
  (auto, auto, auto, auto),
  (
    [*Severidad*], [*Leve*], [*Moderada*], [*Grave*],
    [*% Niño*], [3%], [6%], [9%],
    [*% Lactante*], [5%], [10%], [15%],
    [Pulso], [Normal], [Leve ↑], [↑↑],
    [Amp. Pulso], [Normal], [Débil], [Impalpable],
    [P. sistólica], [Normal], [Normal/↓], [↓],
    [Respiración], [Normal], [Profunda ↑], [Profunda ↑↑ Ausente],
    [Mucosa], [Húmeda], [Seca], [Reseca],
    [Fontanela], [Plana], [Blanda], [Hundida],
    [Ojos], [Normal], [Profundos], [Hundidos],
    [Llanto], [Presente], [Reducido], [Ausente],
    [Piel], [Normal], [Seca], [Fría],
    [Turgencia], [Normal], [↓], [Pliegue],
    [Llenado], [Normal], [3-5s], [>5s],
    [Orina], [Normal], [Oliguria], [Anuria],
    [General], [Sediento], [Irritable], [Letárgico Comatoso],
  ),
  title: "Valoración clínica de deshidratación@HarrietLane2023 @DehydrationClinicalUpToDate",
  header-color: frost3,
  stroke-color: night2
)


#note-tip-box(title: "Ejemplo de cálculo")[
  Lactante de 8 kg con deshidratación moderada (10%):
  
  Déficit = 8 kg × 10% × 10 = *800 mL*
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
  (id: "6xlsra", title: "Liquidos"),
))

// Extra notes
= Notas adicionales
#note-space(height: 4cm, title: "Mis notas y observaciones")
