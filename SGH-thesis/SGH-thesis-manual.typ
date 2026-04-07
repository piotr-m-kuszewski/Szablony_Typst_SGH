#import "@preview/tidy:0.4.3"
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()

#codly(languages: codly-languages)

#set page(
    paper: "a4",
    margin: (top: 25mm, bottom: 25mm, left: 25mm, right: 25mm),
  )
#set text(lang: "pl")
#set text(
    font: "New Computer Modern",
    size: 12pt
)
#show math.equation: set text(font: "New Computer Modern Math")
// Konfiguracja przecinków w formułach matematycznych
#show math.equation: it => {
    // Wszsytkie przecinki są typu "normal" (bez cienkiej spacji)
    show ",": math.class("normal", ",")
    // ", " (przecinek + spacja) → wstawia przecinek jako klasę "punctuation" i usuwa spację
    // (klasa "punctuation" wstawia cienką spację domyślnie)
    show regex(",\\s"): math.class("punctuation", ",")
    it
  }
#set par(first-line-indent: 0pt, justify: true)
#set page(numbering: "1")
#set document(title: [Instrukcja do szablonu\ pracy dyplomowej SGH], author: "Piotr Kuszewski")

#title()
Piotr Kuszewski, marzec 2026

Szablon pracy dyplomowej SGH umożliwia proste sformatowanie pracy dyplomowej z wykorzystaniem Typst. Makra szablonu, rozszerzające funkcjonalność Typst, opisane są w dalszej części tego dokumentu.

Minimalna praca dyplomowa powinna w pierwszej kolejności dołączać plik `SGH-thesis.typ`, który powinien być w tym samym katalogu co plik dokumentu.
```typst
#import "SGH-thesis.typ": *
#show: sgh.with(
  author: "Imię i nazwisko autora",
  student_id: "112358",
  title: "Tytuł pracy",
  advisor: "Prof. Iksińskiego", // pamiętamy o odmianie!
  advisor_department: "Katedra X",
  year: "2025",
  studies: "mgr",
  program: "Metody",
  lang: "pl"
)
#table_of_contents()
= Treść

#list_of_sources("źródła.bib")

#list_of_figures()

#list_of_tables()

#pagebreak()
#heading("Załącznik A", numbering: none)

#sgh_summary[
  Praca analizuje...
]
```

= Struktura pracy

W Typst rozdziały i sekcje tworzy się przy pomocy nagłówków oznaczonych znakiem `=`. Liczba znaków równości określa poziom zagnieżdżenia:

- `= Rozdział` → Rozdział pierwszego poziomu
- `== Podrozdział` → Podrozdział drugiego poziomu
- `=== Sekcja` → Sekcja trzeciego poziomu
- `==== Podsekcja` → Podsekcja czwartego poziomu
- itd.

Przykład struktury:

```typst
= Metodyka badań

== Dobór próby

=== Proces selekcji

Tekst zawartości...

== Narzędzia badawcze

=== Kwestionariusz ankiety

Tekst zawartości...

= Wyniki
```

Każdy nagłówek automatycznie otrzymuje numer na podstawie hierarchii zagnieżdzenia. Numery są zarządzane przez Typst, dlatego nie trzeba ich pisać ręcznie. Nagłówkami automatycznie wypełniany jest także spis treści, tworzony za pomocą makra `#table_of_contents()`.

Jeśli chcemy utworzyć nagłówek bez numeracji (np. dla załączników), możemy to zrobić za pomocą parametru `numbering`:

```typst
#heading("Załącznik A", numbering: none)
```

= Rysunki i tabele

Rysunki i tabele powinny być wstawiane do pracy przy wykorzystaniu makr `#sgh_figure(...)` i `#sgh_table(...)`. Dzięki temu spisy tabel i rysunków będą zawierały poprawne listy obu typów elementów. Czasami możemy chcieć wstawić tabelę jako plik graficzny wygenerowany w innym pakiecie oprogramowania. Makro `#sgh_table()` umożliwia taką operację, poprawnie umieszczając tak wstawioną zawartość, na liście tabel. Warto wiedzieć, że nie będzie się tak działo, jeśli wykorzystamy proste makro `#figure (...)` gdzie jako zawartość wstawimy rysunek.

== Etykiety i odwołania

W Typst etykiety nadajemy elementom za pomocą składni `<nazwa>` bezpośrednio po elemencie, do którego chcemy się odwoływać. Następnie odwołania tworzymy za pomocą `@nazwa`. Przykład:

```typst
#sgh_figure(
  image("wykres.png"),
  caption: [Wykres sprzedaży]
)<fig:sprzedaz>

Jak widać na Rysunku @fig:sprzedaz, sprzedaż rośnie.
```

To samo dotyczy tabel:

```typst
#sgh_table(
  table(...),
  caption: [Wyniki badania]
)<tab:wyniki>

Tabela @tab:wyniki przedstawia szczegółowe wyniki badania.
```

W szablonie odwołania są skonfigurowane tak, że zwracają tylko numer elementu (np. "1", "2"), bez dodatkowego tekstu. Autor musi sam zadbać  o odpowiednią odmianę i nazwanie elementu w tekście (np. `na Rysunku @fig:sprzedaz`, `w Tabeli @tab:wyniki`).

= Cytowania i bibliografia

Dane bibliograficzne przechowywane są w pliku w formacie BibTeX lub Hayagriva. W przypadku BibTeX plik ten najczęściej ma rozszerzenie `.bib` i zawiera rekordy poszczególnych źródeł. Każdy rekord reprezentuje jedno źródło i zawiera informacje takie jak autor, tytuł, rok publikacji, wydawca itp.

Przykładowa zawartość pliku `źródła.bib`:

```bibtex
@book{Smith2020,
  author = {Smith, John and Johnson, Jane},
  title = {Introduction to Typst},
  publisher = {Academic Press},
  year = {2020},
  edition = {2nd}
}
```
Cytowania źródeł w tekście tworzy się za pomocą makra `@klucz`, gdzie `klucz` to identyfikator źródła zdefiniowany w pliku BibTeX. W zależności od wybranego stylu cytu bibliograficznego, dostępne są różne warianty odwołań.

Standardowa konfiguracja szablonu pracy dyplomowej wykorzystuje harwardzki styl cytowania. W stylu harwardzkim dostępne są trzy podstawowe warianty cytowania:

- *Cytowanie*: `@Smith2020` → (Smith, 2020)
- *Samo nazwisko autora*: `#cite(key: <Smith2020>, form: "author")` → Smith
- *Autor i rok*: `#cite(key: <Smith2020>, form: "prose")` → Smith (2020)
- *Tylko rok*: `#cite(key: <Smith2020>, form: "year")` → 2020

Dla bardziej złożonych wymagań bibliograficznych dostępne są pakiety `alexandria` i `pergamon`, które umożliwiają zaawansowane formatowanie i organizację bibliografii. Pakiet `alexandria` pozwala na bardziej elastyczne zarządzanie odwołaniami i tworzenie skomplikowanych struktur cytowania. Pakiet `pergamon` umożliwia tworzenie bardziej zaawansowanych bibliografii z możliwością rozdzielania źródeł na kategorie, na przykład osobne listy dla źródeł online, książek, artykułów naukowych itp. Pakiety te otwierają możliwość tworzenia zaawansowanych struktur bibliograficznych dostosowanych do specyficznych wymagań pracy dyplomowej.

== Pewne szczególne znaki w polskich tekstach

W tekstach w języku polskim niektóre znaki mają inną postać niż w tekstach w języku angielskim. W szczególności dotyczy to stosowania apostrofów, przecinków w notacji dziesiętej i tak zwanych kresek (myślnik, łącznik, etc.).

Aby uzykać właściwe polskie apostrofy drukarskie ("...") wystarczy w kodzie Typst użyć normalnych apostrofów, to znaczy wpisać `"..."`. Jeśli język dokumentu jest ustawiony na `pl`, to tak wpisane apostrofy zostaną automatycznie przekształcone na poprawną parę polskich apostrofów drukarskich.

Szablon pracy dyplomowej jest skonfigurowany tak by w formułach matematycznych odmiennie traktować przecinki, po których jest spacja i te bez spacji. W pierwszym przypadku dostaniemy znaki, które nie będą oddzielone cienką spacją, a w drugim przypadku ta spacja się pojawi. To znaczy, że jeśli napiszemy `$0,5$` ($0,5$), to dostaniemy poprawnie sformatowaną liczbę. Jeśli jednak chcemy użyć przecinka do rozdzielenia parametrów funkcji to musimy napisać `$f(x, y)$` ($f(x, y)$). Polska notacja ułamków dzisiętnych koliduje z notacją Typst stosowaną do wprowadzania macierzy. Musimy napisać
`$mat(1\,2, 2\,3; 3\,4, 4\,5)$`, żeby uzyskać macierz $mat(1\,2, 2\,3; 3\,4, 4\,5)$.

W języku polskim wyróżniamy trzy kreski: łącznik (-), półpauzę (–) i pauzę (—). Najczęściej mylone są półpauza i pauza. *Myślnik (pauza, —):* Stosowany do wprowadzania wypowiedzi dialogowych, wtrąceń, wyraźnego oddzielenia części zdania. W polskim typowo używa się pauzy (—) w dialogach i jako znak przerywnikowy. *Półpauza (–):* Używana do zakresów liczbowych (np. 1990–2000), jako zamiennik słowa "do", w wyliczeniach, czasem jako znak minus w matematyce. W polskim nie stosuje się półpauzy jako znaku przerywnikowego w zdaniu (w przeciwieństwie do angielskiego). *Łącznik (-):* Służy do łączenia wyrazów, np. "biało-czerwony".

=== Jak wpisać "kreski" na klawiaturze
- Typst i LaTeX pozwalają wpisać te znaki korzystając z wielokrotności znaku `-`. Dla półpauzy stosujemy `--` a dla pauzy `---`.
- *macOS:* Półpauza: `Option + -`, pauza: `Shift + Option + -`.
- *Windows:* Pauza: `Alt + 0151` (na klawiaturze numerycznej), półpauza: `Alt + 0150`. W niektórych konfiguracjach klawiatury: `Ctrl + Alt + -` (półpauza). Word często sam poprawia wprowadzony łącznik na półpauzę, ale nie działa to przy kopiowaniu tekstu.

= Opis procedur zawartych w szablonie

#let docs = tidy.parse-module(read("SGH-thesis.typ"), name: none)
#tidy.show-module(docs)
