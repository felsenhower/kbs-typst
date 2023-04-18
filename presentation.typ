#import "typst-modules/typst-slides/slides.typ": *
#import "typst-modules/notes.typ/notes.typ": note, notes
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

#set text(
  font: "Latin Modern Sans"
)

#show link: content => underline[#content]

#let footnote = note

#let footnotes() = notes(
  size: 18pt,
  font: "Latin Modern Sans",
  line: line(length: 100%, stroke: 1pt + black)
)

#let yes = text(blue, sym.checkmark)
#let no = text(red, [*#sym.times*])

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

#let typst_example(
  filename,
) = [
  #grid(
    gutter: 5mm,
    columns: (1fr,1fr),
    box(fill: luma(230), height: 75%, width: 100%, inset: 5mm)[
      #raw(read(filename + ".typ"), lang: "typ")
    ],
    box(fill: luma(230), height: 75%, width: 100%, inset: 5mm)[
    #{
      image(filename + ".svg")
    }]
  )
]

#slide(title: "Mein erstes Dokument")[
  #typst_example("examples/01")
]

#slide(title: "Mein erstes Dokument")[
  #typst_example("examples/02")
]

#slide(title: "Lorem Ipsum" + footnote("https://de.wikipedia.org/wiki/Lorem_ipsum"))[
  #text(size: 17pt)[
    #grid(
      gutter: 5mm,
      columns: (1fr,1fr),
      box(fill: luma(230), height: 64%, width: 100%, inset: 5mm)[
        #raw(read("examples/lorem.py"), lang: "py")
      ],
      box(fill: luma(230), height: 64%, width: 100%, inset: 5mm)[
        #beginning(2)[
        #raw(read("examples/lorem.typ"), lang: "typ")
        ]
      ]
    )
  ]
  
#v(-5mm)

  #footnotes()
]

// #slide(title: "lorem.py (Beispiel)" + footnote("https://de.wikipedia.org/wiki/Lorem_ipsum"))[
//   #text(size: 20pt)[
//     
//   ]

//   #footnotes()
// ]

// #slide(title: "lorem.typ")[
//   #text(size: 20pt)[
//     #raw(read("examples/lorem.typ"), lang: "typ")
//   ]
// ]