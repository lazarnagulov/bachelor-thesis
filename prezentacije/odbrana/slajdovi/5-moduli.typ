#import "../common.typ": node, arr, tag
= HIR и систем модула

#align(center)[
  #v(0.4em)
  #grid(
    columns: (1fr, 1fr),
    row-gutter: 3pt,
    column-gutter: 1em,

    align(right)[#node("types.testa")], align(left)[#node("enums.testa")],
    grid.cell(colspan: 2, arr(symbol: "↓")),
    grid.cell(colspan: 2, align(center)[#node("compile", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0"))]),
    grid.cell(colspan: 2, arr(symbol: "↓")),
    align(right)[#node("types.tmod", fill: rgb("#FFF3E0"), stroke: rgb("#EF6C00"))],
    align(left)[#node("enums.tmod", fill: rgb("#FFF3E0"), stroke: rgb("#EF6C00"))],
    grid.cell(colspan: 2, arr(symbol: "↓")),
    grid.cell(colspan: 2, align(center)[#node("@import", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0"))]),
    grid.cell(colspan: 2, arr(symbol: "↓")),
    grid.cell(colspan: 2, align(center)[#node("main.testa")]),
  )
]
*Независно превођење:* Модули се чувају као серијализовани HIR (.tmod). \
*Увоз:* Прескочено поновно парсирање и семантичка анализа.