#import "../common.typ"
= Архитектура

#align(center + horizon)[
  #block(width: 100%)[
    #set text(size: 22pt)
    #set list(spacing: 2em)
   
    *Преводилац* 
    -- Обрада DSL изворног кода и генерисање излазних формата.
    
    *Језички сервер* 
    -- Имплементација LSP-a за интеграцију са уредницима текста.

    *Генератор*
    -- Превођење HIR-а у генерисане податке различитих излазних формата.
  ]
]
== Преводилац

#align(center)[
  #grid(
    columns: (auto, auto, auto, auto, auto),
    column-gutter: 0.8em,
    row-gutter: 1em,
    align: center + horizon,

    common.node("DSL", subtitle: "изворни код", w: 100pt),
    common.arr(symbol: "→"),
    common.node("Лексички\nанализатор", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0")),
    common.arr(symbol: "→"),
    common.node("Синтаксни\nанализатор", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0")),

    [], [], [], [], common.arr(symbol: "↓"),

    [],
    [],
    common.node("Семантички\nанализатор", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0")),
    common.arr(symbol: "←"),
    common.node("AST", fill: rgb("#F3EFFF"), stroke: rgb("#7E57C2"), w: 100pt),

    [], [], common.arr(symbol: "↓"), [], [],

    [], [], common.node("HIR", fill: rgb("#F3EFFF"), stroke: rgb("#7E57C2"), w: 100pt), [], [],

    [], [], 
    grid(columns: 2, column-gutter: 3em, common.arr(symbol: "↙"), common.arr(symbol: "↘")), 
    [], [],

    grid.cell(colspan: 5)[
      #grid(
        columns: 2,
        column-gutter: 2.5em,
        common.node("Генератор", subtitle: "JSON · CSV · XML", w: 150pt, fill: rgb("#E8F5E9"), stroke: rgb("#43A047")),
        common.node("Модули", w: 110pt, fill: rgb("#FFF3E0"), stroke: rgb("#EF6C00"))
      )
    ]
  )
]

== Језички сервер

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 4em,
    row-gutter: 1.5em,
    align: center + horizon,

    grid.cell(colspan: 2)[
      #common.node("LSP", w: 120pt, fill: rgb("#F3EFFF"), stroke: rgb("#7E57C2"))
    ],

    common.arr(symbol: "↙"), common.arr(symbol: "↘"),

    common.node("Синтаксни\nанализатор", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0")),
    common.node("Семантички\nанализатор", fill: rgb("#E8F1FB"), stroke: rgb("#1565C0")),

    common.arr(symbol: "↘"), common.arr(symbol: "↙"),

    grid.cell(colspan: 2)[
      #common.node("Функције\nуредника текста", w: 140pt, fill: rgb("#E8F5E9"), stroke: rgb("#43A047"))
    ]
  )
]

== Генератор

#align(center)[
  #grid(
    columns: (1fr, 0.95fr),
    column-gutter: 2em,
    align: horizon,

    // ЛЕВО — архитектура генератора
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