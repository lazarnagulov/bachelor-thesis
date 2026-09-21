#import "../common.typ": node, arr, tag

= Циљ

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  row-gutter: 0.8em,

  [
    #text(size: 12pt)[
      + *DSL за опис тест података*
        - типови и шаблони
        - ограничења и структуре
        - референце и енумерације

      + *Преводилац и генерација*
        - AST, семантичка анализа и HIR
        - генерисање JSON, CSV и XML
        - систем модула и `.tmod`

      + *LSP подршка*
        - језички сервер за DSL
        - интеграција са уредницима текста
        - језичке функционалности током рада
    ]
  ],
  [
    #align(center + horizon)[
      #grid(
        columns: (1fr, 1fr),
        column-gutter: 1em,
        align: center,

        [
          #node(
            "DSL",
            subtitle: "опис тест података",
            fill: rgb("#F3EFFF"),
            stroke: rgb("#7E57C2"),
          )

          #arr(symbol: "↓")

          #node(
            "Преводилац",
            subtitle: "AST → анализа → HIR",
            fill: rgb("#E8F5E9"),
            stroke: rgb("#43A047"),
          )

          #arr(symbol: "↓")

          #grid(
            columns: (auto, auto, auto),
            column-gutter: 0.4em,
            align: center,

            tag("JSON"),
            tag("CSV"),
            tag("XML"),
          )
        ],
        [
          #node(
            "LSP",
            subtitle: "подршка у уреднику",
            fill: rgb("#E3F2FD"),
            stroke: rgb("#1565C0"),
          )
        ],
      )
    ]
  ],
)
