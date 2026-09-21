#let node(title, subtitle: none, w: 130pt, fill: rgb("#F5F5F5"), stroke: rgb("#9E9E9E")) = [
  #box(
    width: w,
    inset: (x: 5pt, y: 12pt),
    radius: 6pt,
    fill: fill,
    stroke: 1.2pt + stroke,
  )[
    #align(center)[
      #text(size: 11pt, weight: "bold")[#title]
      #if subtitle != none [
        #v(0.4em)
        #text(size: 8.5pt, weight: "regular")[#subtitle]
      ]
    ]
  ]
]

#let arr(symbol: "→") = align(center + horizon)[
  #text(size: 18pt, fill: rgb("#1565C0"), weight: "bold")[#symbol]
]

#let tag(name) = box(
  inset: (x: 8pt, y: 4pt),
  radius: 4pt,
  fill: rgb("#FFFFFF"),
  stroke: 0.8pt + rgb("#81C784"),
  text(size: 8.5pt, weight: "medium", fill: rgb("#2E7D32"))[#name]
)
