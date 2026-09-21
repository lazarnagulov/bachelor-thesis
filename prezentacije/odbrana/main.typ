#import "@preview/touying:0.7.4": *
#import themes.stargazer: *
#set raw(syntaxes: "/testa.sublime-syntax")
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

#include "slajdovi/1-motivacija.typ"
#include "slajdovi/2-cilj.typ"
#include "slajdovi/3-arhitektura.typ"
#include "slajdovi/4-evaluacija.typ"
#include "slajdovi/5-zakljucak.typ"