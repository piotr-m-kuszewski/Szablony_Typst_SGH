# Informacje ogólne

W tym repozytorium znajdują się szablony dokumentów w formacie Typst przydatnych pracownikom i studentom Szkoły Głównej Handlowej w Warszawie (SGH Warsaw School of Economics). Obecnie szablony wymagają samodzielnego skopiowania do odpowiedniego katalogu, a następnie ich zaimportowanie w dokumencie Typst. Docelowo szablony znajdą się na Typst Universe. W tym momencie dostępne są dwa szablony: szablon pracy dyplomowej i szablon prezentacji. Wybór tych dwóch typów dokumentów został podyktowany potrzebami studentów przygotowujących prace dyplomowe i materiały do obrony pracy dyplomowej.

# Szablon pracy dyplomowej

Szablon pracy dyplomowej znajduje się w katalogu `sgh-thesis` w tym repozytorium. Szablon pracy dyplomowej jest dwujęzyczny, a w katalogu znajduje się dodatkowa instrukcja wyjaśniająca szczegółowo, jak można korzystać z tego szablonu. Standardowym fontem wykorzystywanym do składu prac dyplomowych jest New Computer Modern, który jest domyślnie zawarty w każdej instalacji Typst. Aby korzystać z tego szablonu, wystarczy zainstalować Typst na swoim komputerze i można z niego natychmiast korzystać bez żadnych dodatkowych czynności konfiguracyjnych.

Szablon spełnia wszystkie wymagania dla prac dyplomowych w SGH, więc prace złożone z wykorzystaniem tego szablonu powinny spełniać wymogi redakcyjne dla prac dyplomowych bez dodatkowych problemów.

## Komentarze promotora

Od wersji 0.2.0 promotor może wpisywać komentarze bezpośrednio w pliku źródłowym pracy poleceniem `#sgh-comment[…]`, a autor może na nie odpowiadać. Komentarze zostają w pliku na stałe. Parametr `advisor-comments` procedury `sgh` decyduje, czy widać je w PDF: `true` daje wersję roboczą z komentarzami na poszerzonym prawym marginesie, a domyślne `false` daje wersję ostateczną, w której komentarze nie zostawiają żadnego śladu.

Wersję można też wybrać przy kompilacji, bez zmiany pliku. Wartość podana w wierszu poleceń ma pierwszeństwo przed parametrem:

```bash
typst compile --input advisor-comments=true praca.typ   # wersja robocza z komentarzami
typst compile --input advisor-comments=false praca.typ  # wersja ostateczna
```

W katalogu `sgh-thesis` są dwa przykłady:

- `sgh-thesis-example-pl.typ` ma `advisor-comments: true`, więc jego PDF pokazuje komentarze promotora na marginesie;
- `sgh-thesis-example-final-pl.typ` ma komentarze wpisane w tekst, ale wyłączone (`advisor-comments: false`), więc jego PDF jest wersją ostateczną bez komentarzy. Komentarze pokazuje polecenie `typst compile --input advisor-comments=true sgh-thesis-example-final-pl.typ`.

Szczegóły, w tym miejsce wpisywania komentarza w akapicie i ograniczenia, opisuje instrukcja `sgh-thesis-manual.pdf`.

# Szablon prezentacji

Szablon prezentacji znajduje się w katalogu `sgh-presentation` w tym repozytorium. Podobnie jak szablon pracy dyplomowej szablon prezentacji jest dwujęzyczny. Standardowym fontem w prezentacjach SGH jest Open Sans. Ten font jest mało czytelny i nie zawiera wielu opcji ustalenia wagi fontu w dokumencie. Z tego względu prezentacje w formacie Typst używają fontu Lato. Font Lato jest bezpłatny i dostępny pod adresem <https://www.latofonts.com>. Font Lato został opracowany w Polsce przez Łukasza Dziedzica. Instalacja fontu w systemie jest niezbędna, jeśli chcemy niego korzystać w Typst zainstalowanym na komputerze. W przypadku edytowania dokumentów na platformie Typst.app nie ma takiej potrzeby, bo font jest już tam zainstalowany.

# Jak korzystać z tych szablonów

Najprostszą ścieżką byłoby używanie tych szablonów poprzez centralne repozytorium Typst Universe, ale niestety bariery administracyjne i brak działania niektórych osób sprawia, że na tym etapie instalacja szablonów musi być wykonana przez użytkownika ręcznie.

Gdy szablony trafią do Typst Universe, wystarczy zaimportować je w dokumencie poleceniem `#import "@preview/sgh-thesis:0.2.0": *` lub `#import "@preview/sgh-presentation:0.1.2": *`, tak jak w instrukcji i przykładzie szablonu prezentacji. (Instrukcja i przykład szablonu pracy importują plik `sgh-thesis.typ` z tego samego katalogu.) Typst pobierze wtedy pakiet sam. Do tego czasu trzeba skopiować szablon na własny komputer jednym z dwóch sposobów opisanych niżej i odpowiednio zmienić wiersz `#import`.

## Sposób 1: plik szablonu w folderze projektu

Najprościej skopiować plik szablonu do folderu, w którym leży dokument pracy lub prezentacji. Dla pracy dyplomowej jest to plik `sgh-thesis/sgh-thesis.typ`, a dla prezentacji plik `sgh-presentation/sgh-presentation.typ`. Szablon importuje się wtedy przez nazwę pliku:

```typst
#import "sgh-thesis.typ": *
```

lub, w przypadku prezentacji:

```typst
#import "@preview/touying:0.7.4": *
#import "sgh-presentation.typ": *
```

Ten sposób działa także w Typst.app: plik szablonu trzeba wgrać do projektu obok dokumentu. Szablon prezentacji korzysta z pakietu Touying, który jest już w Typst Universe, więc Typst pobierze go automatycznie. Wadą tego sposobu jest konieczność kopiowania pliku do każdego nowego projektu.

## Sposób 2: pakiet lokalny na komputerze

Typst pozwala zainstalować pakiet w katalogu użytkownika i korzystać z niego we wszystkich projektach na danym komputerze. Pakiety zainstalowane w ten sposób należą do przestrzeni nazw `@local`. Należy skopiować cały folder z numerem wersji (`sgh-thesis/0.2.0` lub `sgh-presentation/0.1.2`) tak, aby plik `typst.toml` znalazł się w katalogu:

- macOS: `~/Library/Application Support/typst/packages/local/sgh-thesis/0.2.0/`
- Windows: `%APPDATA%\typst\packages\local\sgh-thesis\0.2.0\`

i analogicznie dla `sgh-presentation`. Brakujące katalogi trzeba utworzyć.

Na macOS wystarczy wykonać w Terminalu, w katalogu z pobranym repozytorium:

```bash
mkdir -p ~/Library/Application\ Support/typst/packages/local/sgh-thesis ~/Library/Application\ Support/typst/packages/local/sgh-presentation
cp -R sgh-thesis/0.2.0 ~/Library/Application\ Support/typst/packages/local/sgh-thesis/
cp -R sgh-presentation/0.1.2 ~/Library/Application\ Support/typst/packages/local/sgh-presentation/
```

Katalog `Library` jest w Finderze ukryty. Aby skopiować foldery ręcznie, należy w Finderze nacisnąć Cmd+Shift+G i wpisać ścieżkę `~/Library/Application Support`.

Na Windows wystarczy wykonać w PowerShell, w katalogu z pobranym repozytorium:

```powershell
New-Item -ItemType Directory -Force "$env:APPDATA\typst\packages\local\sgh-thesis", "$env:APPDATA\typst\packages\local\sgh-presentation"
Copy-Item -Recurse -Force sgh-thesis\0.2.0 "$env:APPDATA\typst\packages\local\sgh-thesis\"
Copy-Item -Recurse -Force sgh-presentation\0.1.2 "$env:APPDATA\typst\packages\local\sgh-presentation\"
```

Foldery można też skopiować ręcznie: wpisanie `%APPDATA%` w pasku adresu Eksploratora plików otwiera właściwy katalog.

Po instalacji szablony importuje się z przestrzeni `@local`:

```typst
#import "@local/sgh-thesis:0.2.0": *
```

lub, w przypadku prezentacji:

```typst
#import "@preview/touying:0.7.4": *
#import "@local/sgh-presentation:0.1.2": *
```

Typst.app nie widzi folderów zapisanych na komputerze. Użytkownicy planu Typst Pro mogą jednak opublikować projekt z plikami pakietu jako pakiet prywatny, zgodnie z instrukcją [Private Packages](https://typst.app/docs/web-app/private-packages/), i importować go tym samym poleceniem z `@local`. W bezpłatnej wersji Typst.app należy skorzystać ze sposobu 1.

# Typst

Typst to nowoczesny system składu dokumentów, który łączy jakość typograficzną znaną z LaTeX z prostszą składnią i szybszą pracą. Pozwala tworzyć dokumenty naukowe, raporty, prezentacje i prace dyplomowe w sposób powtarzalny, wersjonowalny i wygodny dla pracy zespołowej.

## Dlaczego Typst? Porównanie z LaTeX i Word

### Typst vs LaTeX
- **Prostsza składnia**: mniej „ceremonii” i krótsze polecenia.
- **Szybka kompilacja**: bardzo szybkie odświeżanie dokumentu podczas edycji.
- **Spójne API**: mniej historycznych wyjątków i łatwiejsza nauka.
- **Nowoczesne podejście**: wygodniejsze definiowanie stylów, funkcji i szablonów.

### Typst vs Word
- **Lepsza powtarzalność**: wygląd oparty o kod/szablon, a nie ręczne formatowanie.
- **Stabilne formatowanie**: mniejsze ryzyko „rozjeżdżania się” dokumentu.
- **Wersjonowanie (Git)**: łatwa kontrola zmian i praca wielu osób.
- **Automatyzacja**: odnośniki, bibliografia, numeracja i spisy działają przewidywalnie.

## Instalacja Typst na komputerze

Najprościej zacząć od oficjalnej strony: <https://typst.app> (zakładka **Download**).

### Windows
1. Pobierz instalator dla Windows ze strony Typst.
2. Zainstaluj aplikację zgodnie z instrukcją instalatora.
3. (Opcjonalnie) doinstaluj narzędzie CLI `typst` i sprawdź w terminalu:
	```bash
	typst --version
	```

### macOS
1. Pobierz wersję dla macOS ze strony Typst i zainstaluj aplikację.
2. Alternatywnie użyj Homebrew (CLI):
	```bash
	brew install typst
	```
3. Sprawdź instalację:
	```bash
	typst --version
	```

## Czym jest Typst.app i jak z niego korzystać?

**Typst.app** to oficjalny edytor online do pracy z dokumentami Typst w przeglądarce.

Najważniejsze możliwości:
- edycja dokumentu z podglądem na żywo,
- współdzielenie i współpraca nad projektem,
- gotowe szablony i łatwy start bez instalacji,
- eksport do PDF.

Jak zacząć:
1. Wejdź na <https://typst.app> i załóż konto.
2. Utwórz nowy projekt lub wybierz szablon.
3. Edytuj plik `.typ` i obserwuj podgląd po prawej stronie.
4. Po zakończeniu wyeksportuj dokument do PDF.

W kontekście tego repozytorium Typst.app jest wygodnym sposobem testowania szablonów SGH bez lokalnej instalacji fontów (np. Lato dla prezentacji).

# Licencja

Wszystkie pliki są dostarczone w oparciu o licencję MIT. Można je swobodnie modyfikować, o ile w zmodyfikowanych plikach umieści się informacje o pochodzeniu pliku i copyright pierwotnego autora.