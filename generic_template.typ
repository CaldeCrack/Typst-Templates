// Generic Typst template for university projects
#let project(title: "", authors: (), date: none, body) = {
  // Document's basic properties
  set document(author: authors, title: title)
  set page(
    margin: (left: 25mm, right: 25mm, top: 30mm, bottom: 15mm),
    numbering: "- 1 -",
    number-align: center,
    header-ascent: 50%,
    header: align(left)[
      Facultad de Ciencias Físicas y Matemáticas #h(1fr) Universidad de Chile #line(start: (0pt, -8pt), end: (454pt, -8pt))
    ],
  )
  set text(font: "Linux Libertine", lang: "es")
  
  // Sub header
  align(left)[
    #v(-2.4em)
    *CC5213-1 Recuperación de Información Multimedia* \
    *Prof. de Cátedra:* Juan Manuel Barrios \
    *Estudiante:* #authors.join(", ")
  ]

  // Logo
  place(
    top + right,
    figure(
      image("img/dcc.png", width: 22%),
    ),
    dy: -4.9%,
  )

  // Title row
  align(center)[
    #v(0.8em)
    #block(text(weight: 700, 1.75em, title))
    #v(0.75em, weak: true)
    #date
  ]

  // Main body
  set par(justify: true)

  body
}

/* Usage
#show: project.with(
  title: "title",
  authors: ("First Member", "Second Member"),
  date: "September 16, 2023",
)
*/
