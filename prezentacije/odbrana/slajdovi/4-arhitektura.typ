#import "../common.typ"

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

          common.node(
            "HIR",
            w: 110pt,
            fill: rgb("#F3EFFF"),
            stroke: rgb("#7E57C2"),
          ),

          common.arr(symbol: "↓"),

          common.node(
            "Генератор",
            w: auto,
            fill: rgb("#E8F5E9"),
            stroke: rgb("#43A047"),
            subtitle: stack(
              dir: ltr,
              spacing: 0.35em,
              common.tag("Шаблони"),
              common.tag("Ограничења"),
              common.tag("Структуре"),
              common.tag("Референце"),
              common.tag("Енумерације"),
            ),
          ),

          grid(
            columns: (auto, auto, auto),
            column-gutter: 1.1em,
            row-gutter: 0.3em,

            common.arr(symbol: "↙"),
            common.arr(symbol: "↓"),
            common.arr(symbol: "↘"),

            common.node(
              "JSON",
              w: 65pt,
              fill: rgb("#FFF3E0"),
              stroke: rgb("#EF6C00"),
            ),
            common.node(
              "CSV",
              w: 65pt,
              fill: rgb("#FFF3E0"),
              stroke: rgb("#EF6C00"),
            ),
            common.node(
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