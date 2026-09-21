= Циљ

#v(0.3em)

#align(center)[

  #rect(
    width: 32%,
    inset: 11pt,
    radius: 8pt,
    fill: rgb("#E8F1FB"),
    stroke: 1.5pt + rgb("#1565C0"),
  )[
    #align(center)[
      #text(size: 17pt, weight: "bold")[Дизајн језика]
    ]
  ]

  #grid(
    columns: (1fr, 0.16fr, 0.7fr, 0.16fr, 1fr),
    column-gutter: 0.5em,

    rect(
      width: 100%,
      inset: 11pt,
      radius: 8pt,
      fill: rgb("#E8F5E9"),
      stroke: 1.5pt + rgb("#43A047"),
    )[
      #align(center)[
        #text(size: 15pt, weight: "bold")[
          Генерисање
          података
        ]
      ]
    ],

    align(center + horizon)[
    ],

    circle(
      radius: 42pt,
      fill: rgb("#1565C0"),
    )[
      #align(center + horizon)[
        #text(
          size: 23pt,
          weight: "bold",
          fill: white,
        )[DSL]
      ]
    ],

    align(center + horizon)[],

    rect(
      width: 100%,
      inset: 11pt,
      radius: 8pt,
      fill: rgb("#F3EFFF"),
      stroke: 1.5pt + rgb("#7E57C2"),
    )[
      #align(center)[
        #text(size: 15pt, weight: "bold")[
          Анализа
          програма
        ]
      ]
    ],
  )

  #rect(
    width: 32%,
    inset: 11pt,
    radius: 8pt,
    fill: rgb("#FFF3E0"),
    stroke: 1.5pt + rgb("#EF6C00"),
  )[
    #align(center)[
      #text(size: 16pt, weight: "bold")[
        Интеграција са IDE
      ]
    ]
  ]

  #rect(
    width: 28%,
    inset: 9pt,
    radius: 8pt,
    fill: rgb("#E8F1FB"),
    stroke: 1.5pt + rgb("#1565C0"),
  )[
    #align(center)[
      #text(size: 15pt, weight: "bold")[LSP подршка]
    ]
  ]
]