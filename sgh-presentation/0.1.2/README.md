# sgh-presentation

A presentation theme for [Touying](https://typst.app/universe/package/touying)
following the visual identity of the SGH Warsaw School of Economics (Szkoła
Główna Handlowa w Warszawie). The theme is bilingual — the SGH logo switches
between Polish and English depending on the document language (`pl` / `en`).

The standard font for SGH presentations is Lato (a free font developed in Poland
by Łukasz Dziedzic, available at <https://www.latofonts.com>). If Lato is not
installed, Typst falls back to a default font. On the Typst web app the font is
already available.

The full manual, a complete example presentation, and the matching SGH thesis
template are available in the project repository:
<https://github.com/piotr-m-kuszewski/Szablony_Typst_SGH>.

![Title slide of the example presentation produced with the theme](thumbnail.png)

## Installation

The package has not been published on Typst Universe yet. Once it is, the
`#import "@preview/sgh-presentation:0.1.2": *` line shown below will download it
automatically. Until then, install it manually in one of two ways. In both cases
keep importing Touying from `@preview`, as it is already on Typst Universe.

**Copy the theme file into your project.** Copy
`sgh-presentation/sgh-presentation.typ` from the repository into the folder that
holds your document and import it by file name:
`#import "sgh-presentation.typ": *`. This also works on the Typst web app, where
you upload the file to the project.

**Install it as a local package.** Copy the whole `sgh-presentation/0.1.2` folder
from the repository so that its `typst.toml` ends up in

- macOS: `~/Library/Application Support/typst/packages/local/sgh-presentation/0.1.2/`
- Windows: `%APPDATA%\typst\packages\local\sgh-presentation\0.1.2\`

and import it with `#import "@local/sgh-presentation:0.1.2": *`. The Typst web app
does not see folders on your computer, but Typst Pro users can publish a project
holding the package files as a private package, as described in
[Private Packages](https://typst.app/docs/web-app/private-packages/), and import it
with the same `@local` line.

## Usage

The theme builds on Touying, so import both packages:

```typst
#import "@preview/touying:0.7.4": *
#import "@preview/sgh-presentation:0.1.2": *

#set text(lang: "pl") // the SGH logo follows the language: "pl" or "en"

#show: sgh-presentation-theme.with(
  config-info(
    title: [Prezentacja],
    author: [Ijon Tichy],
    date: [Marzec 2026],
  ),
  // footer: [custom footer],
  // footer-progress: true,
  // aspect-ratio: "4-3",
)

#title-slide()

== A simple slide

Some text on the slide.

= Section

== Another slide

#focus-slide[Wake up!]
```

## Available functions

- `sgh-presentation-theme(...)` — the main theme (used with
  `#show: sgh-presentation-theme.with(...)`). Options include `aspect-ratio`,
  `align`, `header`, `header-right`, `footer`, `footer-right` and
  `footer-progress`.
- `title-slide(...)` — the title slide (SGH logo on the brand background).
- `slide(...)` — a regular content slide.
- `new-section-slide(...)` — a section-divider slide.
- `focus-slide[...]` — a full-bleed slide used to draw attention.

Slide structure follows Touying conventions: level-1 headings (`=`) start new
sections and level-2 headings (`==`) start new slides.

## License

MIT — see the [LICENSE](LICENSE) file.
