#import "typst-modules/typst-slides/slides.typ": *
#import "typst-modules/notes.typ/notes.typ": note, notes
#import "typst-modules/typst-cd/typst-cd.typ": node, arr, commutative_diagram
#import "typst-modules/typst-tablex/tablex.typ": tablex, cellx, colspanx, rowspanx
#import "typst-modules/typst-algorithms/algo.typ" : *
#import "typst-modules/typst-physics/physics.typ": *

#import "latex-logo.typ": LaTeX

#show "LaTeX": name => LaTeX

#show: slides.with(
    authors: "Ruben 14felgenh",
    short-authors: "Ruben 14felgenh",
    title: "Typst",
    subtitle: "Der LaTeX-Killer?",
    short-title: "Typst – Der LaTeX-Killer?",
    date: "02.05.2023",
    theme: slides-default-theme(color: rgb("#cc0000"))
)

#let slides_font = "Latin Modern Sans"
#let small_size = 17pt

#set text(
  font: slides_font,
  lang: "de"
)

#show link: content => underline[#content]

#let footnote = note

#let footnotes() = notes(
  size: small_size,
  font: slides_font,
  line: line(length: 100%, stroke: 1pt + black)
)

#let yes = text(blue, sym.checkmark)
#let no = text(red, [*#sym.times*])

#let side-by-side-example(
  height: auto,
  a,
  b
) = [
  #let box_params = (
    radius: 5mm,
    stroke: 2pt + luma(235),
    height: height,
    width: 100%,
    inset: 5mm
  )
  #text(size: small_size)[
    #grid(
      gutter: 5mm,
      columns: 2,
      box(..box_params)[#a],
      box(..box_params)[#b]
    )
  ]
]

#let typst-example(
  height: 64%,
  filename
) = [
  #let color = luma(235)
  #let box_params = (
    radius: 5mm,
    stroke: 2pt + color,
    height: height,
    width: 100%,
    inset: 5mm
  )
  #text(size: small_size)[
    #grid(
      gutter: 5mm,
      columns: 2,
      box(..box_params)[
        #raw(read(filename + ".typ"), lang: "typ")
      ],
      box(..box_params, fill: color)[
        #box(fill: white, width: 100%, height: auto, inset: 2mm)[
          #image(filename + ".svg", width: 100%)
        ]
      ]
    )
  ]
]

#let typst-source(
  filename
) = [
  #let color = luma(235)
  #let box_params = (
    radius: 5mm,
    stroke: 2pt + color,
    height: auto,
    width: 100%,
    inset: 5mm
  )
  #text(size: small_size)[
    #box(..box_params)[
      #raw(read(filename + ".typ"), lang: "typ")
    ]
  ]
]

#let quirk-slide(content) = {
  let num_images = 10
  let images = num_images * (image("assets/vz123.svg"), )
  let image_grid = grid(columns: num_images, ..images)
  slide()[
    #align(center + horizon)[
      #box(width: 110%, height: 88%)[
        #align(center + top)[#image_grid]
        #align(center + horizon)[
          #content
        ]
        #align(center + bottom)[#image_grid]
      ]
    ]
  ]
}

#new-section("Introduction")

#slide(title: "Disclaimer")[
- Ich laber möglicherweise Müll.
- Ich liebe LaTeX!
- #beginning(2)[(und jetzt auch Typst)]
]

#slide[
  #align(center + horizon)[
    #grid(columns: (50%, 30%),
      align(center + horizon)[
        #image(height: 85%, "assets/reddit.png")
      ],
      align(center + horizon)[
        #beginning(2)[
          #image(height: 85%, "assets/github.png")
        ]
      ]
    )
  ]
]

#slide(title: "Was ist Typst?")[
- Typst ist…
  - ein Textsatzsystem und eine Markup-Sprache
  - #beginning(2)[superneu (Open Source Beta-Release: März 2023)]
  - #beginning(3)[superschnell]
  - #beginning(4)[supereinfach]
  - #beginning(5)[typisiert]
  - #beginning(6)[geschrieben ist Rust]
]

#slide(title: "Word vs. Markdown vs. LaTeX vs Typst")[
  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    [], [*Word#footnote[oder LibreOffice, Google Docs, …]*], [*Markdown*], [*LaTeX*], [*Typst*],
    [WYSIWYG], yes, no, no, no,
    [sieht gut aus], no, [(#yes)], yes, yes,
    [Inhalt / Format getrennt], no, [(#yes)], yes, yes,
    [gut versionierbar], no, yes, yes, yes,
    [gut für Teamarbeit], no, [(#yes)], [(#yes)], yes,
  )

  #footnotes()

]

#slide(title: "LaTeX vs Typst")[
  #table(
    columns: (auto, 1fr, 1fr),
    align: center + horizon,
    [], [*LaTeX*], [*Typst*],
    [kompiliert schnell], no, yes,
    [Gute Fehlermeldungen], no, yes,
    [Einfache Syntax], no, yes,
    [Einfaches Scripting], no, yes,
    [Viele Packages], yes, no,
  )
]

#new-section("Benutzung")

#slide(title: "Benutzung")[
  + Command Line
    - #beginning(2)[https://github.com/typst/typst]
    - #beginning(2)[`typst foo.typ`]
  + Online App
    - #beginning(3)[https://typst.app]
  + Visual Studio Code
    - #beginning(4)[https://github.com/nvarner/typst-lsp]
  + typstudio?
    - #beginning(5)[https://github.com/Cubxity/typstudio]
  + ... 
]

#slide(title: "Tutorial")[
  - Die folgenden Folien orientieren sich teilweise am #link(
    "https://typst.app/docs/tutorial/"
    )[Typst-Tutorial].
]

#slide(title: "Mein erstes Dokument")[
  #typst-example(height: 50%, "examples/01")
]

#slide(title: "Mein erstes Dokument")[
  #typst-example(height: 50%, "examples/02")
]

#slide(title: "Aufzählungen")[
  #typst-example(height: 50%, "examples/04")
]

#slide(title: "Bilder")[
  #typst-example(height: 50%, "examples/05")

  - Unterstützt wird PNG, JPG, GIF, und SVG
]

#quirk-slide()[
  PDF wird nicht unterstützt ಠ_ಠ
]

#slide(title: "Bilder")[
  #typst-example(height: 50%, "examples/06")
]

#slide(title: "Bilder")[
  #typst-example(height: 50%, "examples/07")
]

#slide(title: "Bibliographie")[
  #show "LaTeX": name => [#text[La]#text[TeX]] // wtf...
  #typst-example(height: 50%, "examples/08")

  - Format: Hayagriva oder BibLaTeX
]

#slide(title: "Bibliographie")[
  `bibliography.yml`:

  #text(size: small_size)[
    #raw(read("examples/bibliography.yml"), lang: "yaml")
  ]
]

#slide(title: "Mathe")[
  #typst-example(height: 50%, "examples/09")
]

#slide(title: "Formatierung")[
  #typst-example(height: 50%, "examples/10")
]

#slide(title: "Formatierung")[
  #typst-example(height: 50%, "examples/11")
]

#slide(title: "Formatierung")[
  #typst-example(height: 50%, "examples/12")
]

#slide(title: "Formatierung")[
  #typst-source("examples/13")
]

#quirk-slide[
  Bisher gibt es keine `datetime`-Funktionalität.
]

#slide(
  title: "Lorem Ipsum" + footnote("https://de.wikipedia.org/wiki/Lorem_ipsum")
)[
  #side-by-side-example(height: 64%,
    raw(read("examples/lorem.py"), lang: "py"),
    beginning(2)[
      #raw(read("examples/lorem.typ"), lang: "typ")
    ]
  )
  
  #v(-5mm)

  #footnotes()
]

#slide(title: "Typen")[
  - Es gibt die Typen
  #align(right)[
    #box(width: 95%, height: 35%)[
      #align(left)[
        #columns(4, [
        - none
        - boolean
        - integer
        - float
        #colbreak()
        - length
        - angle  
        - ratio
        - relative length
        #colbreak()
        - fraction
        - color
        - symbol
        - array
        #colbreak()
        - dict
        - function
        - *string*
        - *content*
        - …
        ])
      ]
    ]
  ]

  - *Alles* ist implizit zu *content* konvertierbar
  
]

#quirk-slide[
  Bisher gibt es keine Type Hints o.ä. für \
  benutzerdefinierte 
  Funktionen und Variablen.
]

#new-section("Packages")

#slide(title: "Planned Features")[
  #align(center + horizon)[
    #image("assets/planned_features.png", width: 80%)
  ]
]

#slide(title: "Packages")[
  #v(10mm)

  - Viele#footnote(
      "(eigentlich selbstverständliche)"
    ) Dinge müssen über Packages "nachgerüstet" werden
  - Derzeit gibt es *keinen* Package-Manager.
  - Viele hilfreiche Packages gibt es hier: \
    https://github.com/qjcg/awesome-typst

  #v(10mm)

  #footnotes()
]

#slide(title: "Templates")[
  Es gibt Templates für jeden Scheiß:
  - Paper (IEEE, MLA, …)
  - Thesis
  - CV
  - Hausaufgaben
  - Briefe
  - Poster
  - Slides
  - …
]

#slide(title: "Slides")[
  - https://github.com/andreasKroepelin/typst-slides
    - Seht ihr hier gerade
    - Unterstützt Themes
]

#slide(title: "Footnotes")[
  - https://github.com/tbug/notes.typ
    - Konfigurierbar#footnote("foo")

  - https://github.com/saadulkh/typst-notes
    - Einfach

  #footnotes()
]

#slide(title: "Bessere Tabellen")[
  - https://github.com/PgBiel/typst-tablex

  #v(10mm)

  #align(center + horizon)[
    #tablex(
      columns: 3,
      fill: red,
      align: right,
      colspanx(2)[a], (),  [beeee],
      [c], rowspanx(2)[d], cellx(fill: blue, align: left)[e],
      [f], (),             [g],

      // place this cell at the first column, seventh row
      cellx(colspan: 3, align: center, x: 0, y: 6)[hi I'm down here]
    )
  ]
]

#slide(title: "Diagramme")[
  - https://github.com/johannes-wolf/typst-plot

  #v(-10mm)

  #grid(
    columns: 3,
    image("assets/typst-plot/tic-label.png", width: 110%),
    image("assets/typst-plot/parametric.png", width: 110%),
    image("assets/typst-plot/multi.png", width: 110%)
  )
  #v(-50mm)
]

#slide(title: "Diagramme")[
  - https://github.com/johannes-wolf/typst-canvas

  #align(center + horizon)[
    #image("assets/typst-canvas/3d-diagram.svg", width: 40%)
  ]
]

#slide(title: "Diagramme")[
  - https://gitlab.com/giacomogallina/typst-cd

  #v(-30mm)

  #text(size: small_size)[
    #align(center + horizon)[
      #commutative_diagram(width: 300pt, height: 200pt,
        node((0, 0), [$pi_1(X sect Y)$]),
        node((0, 1), [$pi_1(Y)$]),
        node((1, 0), [$pi_1(X)$]),
        node((1, 1), [$pi_1(Y) ast.op_(pi_1(X sect Y)) pi_1(X)$]),
        arr((0, 0), (0, 1), [$i_1$], label_pos: -1em, "inj"),
        arr((0, 0), (1, 0), [$i_2$], "inj"),
        arr((1, 0), (2, 2), [$j_1$], curve: -15deg, "surj"),
        arr((0, 1), (2, 2), [$j_2$], label_pos: -1em, curve: 20deg, "def"),
        arr((1, 1), (2, 2), [$k$], label_pos: 0, "dashed", "bij"),
        arr((1, 0), (1, 1), [], "dashed", "inj", "surj"),
        arr((0, 1), (1, 1), [], "dashed", "inj"),
        node((2, 2), [$pi_1(X union Y)$])
      )
    ]
  ]
]

#slide(title: "Algorithmen")[
  - https://github.com/platformer/typst-algorithms

  #side-by-side-example(
    [
      #algo(
        title: "Fibonacci",
        parameters: ("n",)
      )[
        if $n < 0$:#i\
          return null#d\
        if $n = 0$ or $n = 1$:#i\
          return $n$#d\
        return #smallcaps("Fibonacci")$(n-1) +$ #smallcaps("Fibonacci")$(n-2)$
      ]
    ],
    [
      #code()[
        ```py
        def fibonacci(n):
          if n < 0:
            return None
          if n == 0 or n == 1:
            return n
          return fibonacci(n-1) + fibonacci(n-2)
        ```
      ]
    ]
  )
]

#slide(title: "Physik")[
  - https://github.com/Leedehai/typst-physics

  #typst-example(height: 50%, "examples/03")

]

#slide(title: "Raytracer ಠ_ಠ")[
  #v(-30mm)

  - https://github.com/SeniorMars/typst-raytracer

  #v(-20mm)

  #align(center + horizon)[
    #rotate(90deg)[
      #image("assets/typst-raytracer/mandel.png", height: 80%)
    ]
  ]

  #v(-100mm)

]

#new-section[Fazit]

#slide(title: "Fazit")[

]

#slide(theme-variant: "wake up")[

]

#slide(title: "Wieso ist typst so schnell?")[

]

#slide(title: "Packages importieren")[
  
]