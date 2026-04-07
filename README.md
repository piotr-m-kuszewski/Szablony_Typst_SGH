# Informacje ogólne

W tym repozytorium znajdują się szablony dokumentów w formacie Typst przydatnych pracownikom i studentom Szkoły Głównej Handlowej w Warszawie (SGH Warsaw School of Economics). Obecnie szablony wymagają samodzielnego skopiowania do odpowiedniego katalogu, a następnie ich zaimportowanie w dokumencie Typst. Docelowo szablony znajdą się na Typst Universe. W tym momencie dostępne są dwa szablony: szablon pracy dyplomowej i szablon prezentacji. Wybór tych dwóch typów dokumentów został podyktowany potrzebami studentów przygotowujących prace dyplomowe i materiały do obrony pracy dyplomowej.

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

# Szablon pracy dyplomowej

Szablon pracy dyplomowej znajduje się w katalogu `SGH-thesis` w tym repozytorium. Szablon pracy dyplomowej jest dwujęzyczny, a w katalogu znajduje się dodatkowa instrukcja wyjaśniająca szczegółowo, jak można korzystać z tego szablonu. Standardowym fontem wykorzystywanym do składu prac dyplomowych jest New Computer Modern, który jest domyślnie zawarty w każdej instalacji Typst. Aby korzystać z tego szablonu, wystarczy zainstalować Typst na swoim komputerze i można z niego natychmiast korzystać bez żadnych dodatkowych czynności konfiguracyjnych.

Szablon spełnia wszystkie wymagania dla prac dyplomowych w SGH, więc prace złożone z wykorzystaniem tego szablonu powinny spełniać wymogi redakcyjne dla prac dyplomowych bez dodatkowych problemów.

# Szablon prezentacji

Szablon prezentacji znajduje się w katalogu `SGH-presentation` w tym repozytorium. Podobnie jak szablon pracy dyplomowej szablon prezentacji jest dwujęzyczny. Standardowym fontem w prezentacjach SGH jest Open Sans. Ten font jest mało czytelny i nie zawiera wielu opcji ustalenia wagi fontu w dokumencie. Z tego względu prezentacje w formacie Typst używają fontu Lato. Font Lato jest bezpłatny i dostępny pod adresem <https://www.latofonts.com>. Font Lato został opracowany w Polsce przez Łukasza Dziedzica. Instalacja fontu w systemie jest niezbędna, jeśli chcemy niego korzystać w Typst zainstalowanym na komputerze. W przypadku edytowania dokumentów na platformie Typst.app nie ma takiej potrzeby, bo font jest już tam zainstalowany.