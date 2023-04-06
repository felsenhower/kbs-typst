#import "typst-slides/slides.typ": *

#set text(
  font: "Latin Modern Sans"
)

#let LaTeX = {
  let A = (
    offset: (
      x: -0.33em,
      y: -0.3em,
    ),
    size: 0.7em,
  )
  let T = (
    x_offset: -0.12em    
  )
  let E = (
    x_offset: -0.2em,
    y_offset: 0.23em,
    size: 1em
  )
  let X = (
    x_offset: -0.1em
  )
  [L#h(A.offset.x)#text(size: A.size, baseline: A.offset.y)[A]#h(T.x_offset)T#h(E.x_offset)#text(size: E.size, baseline: E.y_offset)[E]#h(X.x_offset)X]
}

#show "LaTeX": name => LaTeX

#show: slides.with(
    author: "Ruben 14felgenh",
    short-author: "Ruben 14felgenh",
    title: "Typst – Der LaTeX-Killer?",
    short-title: "Typst – Der LaTeX-Killer?",
    date: "2023",
    color: rgb("#cc0000")
)

#let yes = text(blue, sym.checkmark)
#let no = text(red, [*#sym.times*])

= Introduction

#slide[
  == Disclaimer

- Ich laber möglicherweise Müll.
- Ich liebe LaTeX!
- #beginning(2)[(und jetzt auch Typst)]
]

#slide[
  #align(center + horizon)[
    #grid(columns: (50%, 30%),
      align(center + horizon)[
        #image(height: 150%, "assets/reddit.png")
      ],
      align(center + horizon)[
        #beginning(2)[
          #image(height: 150%, "assets/github.png")
        ]
      ]
    )
  ]
]

#slide[
  == Was ist Typst?

- Typst ist…
  - ein Textsatzsystem und eine Markup-Sprache
  - #beginning(2)[superneu (Open Source Beta-Release: März 2023)]
  - #beginning(3)[superschnell]
  - #beginning(4)[supereinfach]
  - #beginning(5)[typisiert]
  - #beginning(6)[geschrieben ist Rust]
]

#slide[
  == Word vs. Markdown vs. LaTeX vs Typst

  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    [], [*Word\**], [*Markdown*], [*LaTeX*], [*Typst*],
    [WYSIWYG], yes, no, no, no,
    [sieht gut aus], no, [(#yes)], yes, yes,
    [Inhalt / Format getrennt], no, [(#yes)], yes, yes,
    [gut versionierbar], no, yes, yes, yes,
    [gut für Teamarbeit], no, [(#yes)], [(#yes)], yes,
  )

  \*: oder LibreOffice, Google Docs, …
]

#slide[
  == LaTeX vs Typst

  #table(
    columns: (auto, 1fr, 1fr),
    align: center + horizon,
    [], [*LaTeX*], [*Typst*],
    [kompiliert schnell], no, yes,
    [Gute Fehlermeldungen], no, yes,
    [Einfache Syntax], no, yes,
    [Einfaches Scripting], no, yes,
    [Viele Packages], yes, no,
    [TikZ], yes, no,
  )
]

= Benutzung



#slide[
  #v(-15mm)

  == Benutzung

  + Command Line
    - #beginning(2)[https://github.com/typst/typst]
    - #beginning(2)[`typst foo.typ`]
  + Online App
    - #beginning(3)[https://typst.app]
  + Visual Studio Code
    - #beginning(4)[https://github.com/nvarner/typst-lsp]
  + ... 
]

= Tutorial

#let typst_example(
  filename,
  rendered: false, 
  cropped: false,
  width: auto,
  height: auto
) = [
  #grid(
    columns: (1fr,1fr),
    raw(read(filename + ".typ"), lang: "typ"),
    box(stroke: (left: 1pt), inset: (left: 5mm), height: 100%)[
    #{
      if rendered {
        if cropped {
          image(filename + "-crop.svg", width: width, height: height)
        } else {
          image(filename + ".svg", width: width, height: height)
        }
      } else {
        include(filename + ".typ")
      }
    }]
  )
]

#slide[
  == Mein erstes Dokument

  #typst_example("examples/01", rendered: true, cropped: true, width: 70%)
]



== ...

= Advanced Usage