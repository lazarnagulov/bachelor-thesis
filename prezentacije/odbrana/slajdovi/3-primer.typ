= Пример

#v(0.5em)

#grid(
  columns: (1fr, 0.15fr, 1fr),
  column-gutter: 1em,
  align: horizon,

  rect(
    width: 100%,
    inset: 14pt,
    radius: 8pt,
    fill: rgb("#F7F9FC"),
    stroke: 1.5pt + rgb("#1565C0"),
  )[
    #text(
      size: 14pt,
      weight: "bold",
      fill: rgb("#1565C0"),
    )[DSL]
    #raw(
      lang: "text",
      block: true,
      "
@import course;
type StudentId = 
  string_pattern \"S${#[7]}\";

template Student {
    id = StudentId;
    name = string;
    course = ref Course.name;
    year = int [range=1..=4];
}
@generate Student[100];"
  )
  ],

  align(center + horizon)[
    #text(
      size: 24pt,
      weight: "bold",
      fill: rgb("#1565C0"),
    )[→]
  ],

  rect(
    width: 100%,
    inset: 14pt,
    radius: 8pt,
    fill: rgb("#F7F9FC"),
    stroke: 1.5pt + rgb("#43A047"),
  )[
    #text(
      size: 14pt,
      weight: "bold",
      fill: rgb("#2E7D32"),
    )[Генерисани подаци]
      #raw(
      lang: "json",
      block: true,
      "{
  \"id\": \"S4821937\",
  \"name\": \"Ana\",
  \"year\": 3,
  \"course\": \"Programming\"
}",
    )
  ],
)
    