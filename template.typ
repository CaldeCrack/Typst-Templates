// Generic Typst template for university projects

/* Usage
#import "<path>/template.typ": *
#show: project.with(
  title: "title",
  subtitle: "subtitle",
  author: ("First Member", "Second Member"),
  prof: ("Professor", ),
  aux: ("Auxiliar", ),
  signature: "Course",
  numbering: "a.1."
*/
// Generic Typst template for university projects
#let project(title: "", subtitle: "", author: (), prof: (), aux: (), signature: "", numbering: "1.1.", font: "Linux Libertine", body) = {
  // Document's basic properties
  set document(author: author, title: title)
  set page(
    margin: (left: 25mm, right: 25mm, top: 20mm, bottom: 15mm),
    numbering: "- 1 -",
    number-align: center,
    header-ascent: 30%,
    header: align(left)[
      Facultad de Ciencias Físicas y Matemáticas #h(1fr) Universidad de Chile #line(start: (0pt, -8pt), end: (454pt, -8pt))
    ],
  )
  set text(font: font, lang: "es")

  v(8mm)
  // Singular | plural
  let prof_text = "Profesor"
  let aux_text = "Auxiliar"
  let student_text = "Estudiante"
  if prof.len() > 1 {prof_text += "es"}
  if aux.len() > 1 {aux_text += "es"}
  if author.len() > 1 {student_text += "s"}
  
  // Sub header
  align(left)[
    #v(-2.4em)
    *#signature* \
    *#prof_text:* #prof.join(", ", last: " y ") \
    #if aux.len() > 0 [*#aux_text:* #aux.join(", ", last: " y ") #linebreak()]
    *#student_text:* #author.join(", ", last: " y ")
  ]

  // Logo
  place(
    top + right,
    image("dcc.png", width: 22%),
    dy: -0.9%
  )

  // Title row
  align(center)[
    #v(0.8em)
    #block(text(weight: 700, 1.75em, title))
    #v(0.75em, weak: true)
    #subtitle
  ]

  // Main body
  set heading(numbering: "P1.1.")
  set enum(numbering: numbering)

  set par(justify: true)

  body
}
