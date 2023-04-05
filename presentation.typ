#import "typst-slides/slides.typ": *

#show: slides.with(
    author: "Ruben 14felgenh",
    short-author: "Ruben 14felgenh",
    title: "Typst – Der LaTeX-Killer?",
    short-title: "Typst – Der LaTeX-Killer?",
    date: "2023",
    color: red
)

== A slide
Some text

== Another slide
More text

#slide[
  We do not need a special heading here.
  == But we can ...
  ... and it doesn't produce new slides here.
] 
