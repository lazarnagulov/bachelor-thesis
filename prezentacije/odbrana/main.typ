#import "@preview/touying:0.7.4": *
#import themes.stargazer: *

#import "@preview/numbly:0.1.0": numbly

#show: stargazer-theme.with(
  aspect-ratio: "16-9",
  config-common(
    new-section-slide-fn: none,
  ),
  config-info(
    title: [DSL и LSP за генерисање тест података],
    author: [Лазар Нагулов, SV61/2022],
    institution: [
      Ментор: проф. др Игор Дејановић
    ],
    date: [Нови Сад, 2026],
  ),
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

#outline-slide()

= Проблем и мотивација

#lorem(80)

= Циљ

#lorem(80)

= Пример

#lorem(80)


= Архитектура

#lorem(80)


= Генерација

#lorem(80)


= HIR и систем модула

#lorem(80)


= Протокол језичких сервера

#lorem(80)


= Евалуација

#lorem(80)

= Резиме реализације

#lorem(80)

= Закључак

#lorem(80)