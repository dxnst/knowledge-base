#import "style.typ": *

#show: note-notes.with(
  title: "Líquidos",
  author: "Daniel Soto",
  font: "Ysabeau"
)

= Líquidos de mantenimiento

El método Holliday-Segar es el más utilizado para aproximar el volumen de
líquidos de mantenimiento:

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

= Pérdidas sensibles
En condiciones normales se puede estimar las pérdidas sensibles de la siguiente
manera:

#note-table(
  (auto, auto),
  (
    [*Fuente*], [*Líquido*],
    [Orina], [50mL/kg],
    [Heces], [5mL/kg],
  ),
  title: "Pérdidas sensibles@Hellerstein1993",
  header-color: frost2,
  stroke-color: night2
)

Si las pérdidas anormales pueden ser medidas directamente, estas deben
reemplazarse 1mL:1mL. Si no pueden medirse directamente se pueden estimar por
cada episodio de la siguiente manera:

#note-table(
  (auto, auto, auto, auto, auto),
  (
    [*Fuente*], [*Líquido*], [*Na+*], [*K+*], [*Cl-*],
    [Vómito], [2mL/kg], [20-80], [5-20], [100-150],
    [Diarrea], [10mL/kg], [10-90], [10-80], [10-110],
  ),
  title: "Pérdidas sensibles anormales@Powers2015",
  header-color: aurora3,
  stroke-color: night3
)

= Pérdidas insensibles
En niños sanos, el volumen de pérdidas insensibles es aproximadamente 1/3 del
volumen de los líquidos de mantenimiento del método Holliday-Segar.

#note-table(
  (auto, auto),
  (
    [*Fuente*], [*Líquido*],
    [Piel o Sudor], [30mL/kg],
    [Respiración], [15mL/kg],
  ),
  title: "Pérdidas insensibles@Hellerstein1993",
  header-color: aurora4,
  stroke-color: night0
)

#note-danger-box[
  Muchos niños hospitalizados presentan mayores pérdidas insensibles:
]

#note-table(
  (auto, auto),
  (
    [*Fuente*], [*Líquido*],
    [Fiebre], [+12% por cada °C arriba de 37],
    [Hiperventilación], [+15-25mL/kg],
  ),
  title: "Pérdidas insensibles anormales@HarrietLane2023",
  header-color: aurora1,
  stroke-color: night1
)

Los niños en ventilación mecánica tienen menores pérdidas insensibles
respiratorias debido al uso de aire humidificado.

= Déficit de líquidos
El método más preciso de determinar el déficit de líquidos toma en cuenta la
diferencia entre el peso antes de la enfermedad y el actual:

#note-formula-box-text(
  "Déficit de líquidos", 
  "Déficit de líquidos (L) = peso antes de la enfermedad (kg) - peso actual (kg)"
)

#note-info-box[
  Si no se conoce la diferencia o pérdida de peso, se puede aproximar el
  déficit de líquidos a partir del porcentaje de deshidratación clínico:
]

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

#note-formula-box-text(
  "Déficit de líquidos",
  "1% Deshidratación = 10mL/kg de déficit de líquido"
)


= Líquidos en deshidratación

#note-success-box[
  - La reanimación y reposición de volumen deben completarse en 24 horas.
  - La rehidratación oral es el método preferido para la reposición y mantenimiento.
]

La siguiente tabla resume las fases de la estrategia de reposición de volumen:

#note-table(
  (auto, auto, auto),
  (
    [*Fase I*], [*Fase II*], [*Fase III*],
    [Estabilización inicial], [Reposición, mantenimiento y pérdidas], [Recuperación y pérdidas],
  ),
  title: "Estrategia de reposición de volumen@HarrietLane2023",
  header-color: frost2,
  stroke-color: night3
)

= Fase I: Estabilización Inicial
El niño con deshidratación requiere intervención rápida para asegurar perfusión
tisular adecuada. Esta fase de la reanimación requiere reposición rápida del
volumen intravascular, la cual debe hacerse con soluciones isotónicas como 
solución salina normal o lactato de Ringer@NelsonEssentials33.

#note-table(
  (auto, auto, auto),
  (
    [*Hipovolemia*], [*Volumen*], [*Notas*],
    [Grave], [20mL/kg durante 20 min], [Repetir si es necesario],
    [Moderada], [10mL/kg durante 30-60 min], [Repetir si es necesario],
  ),
  title: "Terapia de líquidos IV@HypovolemiaTreatmentUpToDate",
  header-color: frost4,
  stroke-color: night2
)

#note-success-box[
  Un niño con deshidratación grave puede necesitar varios bolus de líquidos. La
  reanimación y rehidratación inicial se logra cuando los signos de déficit de
  volumen intravascular resuelven. El niño se muestra más alerta, mejora su
  frecuencia cardíaca, presión arterial y perfusión@NelsonEssentials33.
]

Con un volumen intravascular adecuado, es apropiado planear la terapia de
líquidos durante las siguientes 24 horas@NelsonEssentials33.

= Fase II: Reposición del déficit, mantenimiento y pérdidas continuas

== Terapia de rehidratación oral (TRO)
Es el tratamiento preferido para niños con deshidratación leve a moderada, o
como la segunda fase de reposición para niños con deshidratación grave cuyo
volumen arterial efectivo ha sido restablecido@HypovolemiaTreatmentUpToDate.

=== TRO en Niños con diarrea pero no deshidratación
- Administrar SRO por cada pérdida gastrointestinal para mantener hidratación.

=== TRO en deshidratación moderada y leve
- Iniciar SRO a razón de 50-100mL/kg durante 4 horas.
- Administrar SRO adicional por cada pérdida gastrointestinal.
- Una vez se logra la reposición, se puede iniciar alimentación y líquidos orales y se continúa con SRO por cada pérdida gastrointestinal.

=== TRO en deshidratación grave
- Iniciar SRO a razón de 100mL/kg durante 4 horas o 25mL/kg/hora.
- Administrar SRO adicional por cada pérdida gastrointestinal.
- Una vez se logra la reposición, se puede iniciar alimentación y líquidos orales y se continúa con SRO por cada pérdida gastrointestinal.

#note-danger-box[
  En deshidratación grave la TRO puede iniciarse después de una estabilización
  inicial con líquidos IV exitosa.
]

=== Contraindicaciones para TRO

#note-danger-box[
  - Riesgo de aspiración.
  - Íleo paralítico.
  - Trastornos que limiten la absorción intestinal (ej. intestino corto).
  - Inestabilidad hemodinámica.
  - Deshidratación grave (no se debe utilizar como estabilización inicial).
]

== Terapia de rehidratación intravenosa

=== Indicaciones para continuar con terapia IV

#note-warning-box[
  - Incapacidad del niño de tomar SRO.
  - Incapacidad del cuidador de proveer SRO.
  - Fallo de SRO en proveer rehidratación adecuada (ej. vómito persistente).
  - Desórdenes electrolíticos en ambientes clínicos donde no se pueden monitorear constantemente.
]

= Fase 3: Recuperación y pérdidas continuas

#note-success-box[
  - Continuar con líquidos de mantenimiento.
  - Monitorear cada hora las pérdidas gastrointestinales.
  - Administrar SRO adicional por cada pérdida gastrointestinal.
]

= Resumen de manejo de líquidos en deshidratación grave

#note-tip-box(title: "🔥 Protocolo paso a paso")[
  1. Restaurar el volumen intravascular con solución isotónica: 20mL/kg durante 20min. Repetir si es necesario.
  2. Calcular los requerimientos de las siguientes 24 horas: mantenimiento + déficit de volumen.
  3. Restar la solución isotónica administrada de los requerimientos de 24 horas.
  4. Administrar el volumen restante en 24 horas usando solución salina con dextrosa al 5% y 20mEq/L de KCl.
  5. Reemplazar las pérdidas continuas a medida que ocurran.
]

// Bibliography
#bibliography("bib.yml", style: "mary-ann-liebert-vancouver")

// Tags
#note-tags((
  "líquidos", "deshidratación"
))

// Related notes
#note-related((
  // Add related notes here, for example:
  // (id: "xfoqeb", title: "Líquidos"),
))

// Extra notes
= Notas adicionales
#note-space(height: 4cm, title: "Mis notas y observaciones")
