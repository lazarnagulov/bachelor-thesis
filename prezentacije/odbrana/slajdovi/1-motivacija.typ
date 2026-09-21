= Проблем и мотивација

#v(0.3em)

#align(center)[
  #grid(
    columns: (1fr, 0.18fr, 1fr),
    column-gutter: 1.2em,

    rect(
      width: 100%,
      inset: 12pt,
      radius: 8pt,
      fill: rgb("#E3F2FD"),
      stroke: 1pt + rgb("#1565C0"),
    )[
      #align(center)[
        #text(
          size: 17pt, 
          weight: "bold", 
          fill: rgb("#1565C0")
        )[Ручно / скрипте]
        #v(0.5em)
        #raw(
        lang: "python",
        block: true,
        "def generate_user():
  user = {}
  user[\"name\"] = random_name()
  user[\"age\"] = random_age()
  return user",
      )
        #v(0.5em)
        #text(size: 14pt)[Код + генерација]
      ]
    ],

    align(center + horizon)[],

    rect(
      width: 100%,
      inset: 12pt,
      radius: 8pt,
      fill: rgb("#E3F2FD"),
      stroke: 1pt + rgb("#1565C0"),
    )[
      #align(center)[
        #text(
          size: 17pt,
          weight: "bold",
          fill: rgb("#1565C0"),
        )[DSL]

        #v(0.5em)
            #raw(
            lang: "testa",
            block: true,
        "template User {
  name = string;
  age = int [range=1..=100];
}",
      )
        #text(size: 14pt)[декларативни опис]
      ]
    ],
  )

  #v(0.3em)

  #rect(
    width: 58%,
    inset: 9pt,
    radius: 6pt,
    fill: rgb("#FFF8E1"),
    stroke: 1pt + rgb("#D6A500"),
  )[
    #align(center)[
      #text(size: 14pt)[
        понављање и мешање описа са имплементацијом
      ]
    ]
  ]
]