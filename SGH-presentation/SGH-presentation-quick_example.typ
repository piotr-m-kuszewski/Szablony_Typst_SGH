#import "@preview/touying:0.7.0": *
#import "SGH-presentation.typ": *

#set text(lang: "pl") // Logo SGH zmienia się po zmianie języka: "pl", "en"

#show: sgh-presentation-theme.with(
  config-info(
    title: [Prezentacja],
    //subtitle: [coś jeszcze],
    author: [Ijon Tichy],
    //institution: [SGH],
    date: [Marzec 2026],
  ),
  // footer: [stopka],
  // footer-progress: true,
  // aspect-ratio: "4-3",
)

// Jeśli chcesz numerować równania...
#set math.equation(numbering: "(1)")

#title-slide()

== Test

Tekst na slajdzie.

- A
- B
- C
  - D
  - E
    - F
    - G

= Sekcja

== A teraz z innej beczki

+ Pierwszy
+ Drugi

$
  EE(XX) = E(E(XX)) VV"ar"
$<eq-1>

== Tabela

A to jest równanie @eq-1 i Tabela @tab:1


#figure(
    caption: "Ala ma kota",
    table(
    columns: (3cm, 5cm, 3cm),
    align: (left, left, left),
    table.header([A], [B], [C]),
    [1], [2], [3],
    [4], [5], [6],
    [7], [8], [9],

    )
)<tab:1>

#focus-slide[Obudź się!]