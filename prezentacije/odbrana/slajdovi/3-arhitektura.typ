#import "../common.typ": node, arr, tag

= Архитектура система

#align(center)[
  #image("../slike/hl_dijagram.svg", height: 52%)
]

#v(0.3em)
- *Архитектура дељеног језгра:* Заједнички синтаксни и семантички анализатор за све подсистеме.
- *Раздвајање слојева:* HIR служи као граница између аналитичког језгра и извршних модула (CLI и LSP).

== Архитектура генератора података

#align(center)[
  #grid(
    columns: (1fr, 0.95fr),
    column-gutter: 2em,
    align: horizon,

    [
      #align(center)[
        #grid(
          columns: 1,
          row-gutter: 0.65em,
          align: center,

          node(
            "HIR",
            w: 110pt,
            fill: rgb("#F3EFFF"),
            stroke: rgb("#7E57C2"),
          ),

          arr(symbol: "↓"),

          node(
            "Генератор",
            w: auto,
            fill: rgb("#E8F5E9"),
            stroke: rgb("#43A047"),
            subtitle: stack(
              dir: ltr,
              spacing: 0.35em,
              tag("Шаблони"),
              tag("Ограничења"),
              tag("Структуре"),
              tag("Референце"),
              tag("Енумерације"),
            ),
          ),

          grid(
            columns: (auto, auto, auto),
            column-gutter: 1.1em,
            row-gutter: 0.3em,

            arr(symbol: "↙"),
            arr(symbol: "↓"),
            arr(symbol: "↘"),

            node(
              "JSON",
              w: 65pt,
              fill: rgb("#FFF3E0"),
              stroke: rgb("#EF6C00"),
            ),
            node(
              "CSV",
              w: 65pt,
              fill: rgb("#FFF3E0"),
              stroke: rgb("#EF6C00"),
            ),
            node(
              "XML",
              w: 65pt,
              fill: rgb("#FFF3E0"),
              stroke: rgb("#EF6C00"),
            ),
          ),
        )
      ]
    ],
    [
      #rect(
        width: 100%,
        inset: 13pt,
        radius: 7pt,
        fill: rgb("#F7F9FC"),
        stroke: 1pt + rgb("#B0BEC5"),
      )[
        #raw(
          lang: "java",
          block: true,
          "interface FileGenerator:
  generate(record) -> String
  extension() -> String
  header(fields) -> String?
  footer() -> String?
  separator() -> String?",
        )
      ]
    ],
  )
]

#v(0.5em)
- *Јединствен улаз:* HIR служи као заједничка основа за генерисање свих излазних формата.
- *Проширивост излаза:* `FileGenerator` интерфејс омогућава лако додавање нових формата (JSON, CSV, XML...).

== HIR и систем модула

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
*Увоз:* Прескочена поновна синтаксна и семантичка анализа.

== Протокол језичких сервера

#align(center)[
  #image("../slike/lsp_dijagram.svg", height: 65%)
]

#v(0.3em)
- *Трослојна архитектура:* Раздвојени комуникациони слој, аналитички слој и функционални LSP слој.
- *Инкрементална обрада:* Управљач докумената прати измене отворених докумената.