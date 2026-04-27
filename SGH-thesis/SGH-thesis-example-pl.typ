// Import szablonu pracy dyplomowej zgodnej z wymaganiami SGH
#import "SGH-thesis.typ": *

#import "@preview/theorion:0.6.0": *
#import cosmos.simple: *
#show: show-theorion

// Zdefiniowanie dodatkowego elementu dla hipotez
#let (hipoteza-counter, hipoteza-box, hipoteza, show-hipoteza) = make-frame(
  "hipoteza",
  "Hipoteza"
)
#show: show-hipoteza
#set par(justify: true)

// Wstawka z opisem przykładowej pracy dyplomowej
#note-block(title: "Ważna uwaga!")[
  Ten dokument jest przykładem pracy dyplomowej sformatowanej za pomocą szablonu Typst (https://typst.app) zgodnego z wymaganiami redakcyjnymi Szkoły Głównej Handlowej. W treści wykorzystane są wszystkie dodatkowe elementy formatowania wprowadzane przez ten szablon. Treść tego dokumentu nie jest pracą dyplomową złożoną przez Ijona Tichego. Zainteresowanych prawdziwymi dokonaniami tego znanego badacza zachęcam do lektury _Dzienników gwiazdowych_.
]

#emph-block[
  Wykorzystane elementy szablonu pracy dyplomowej:
  - `sgh` do formatowania strony tytułowej pracy oraz włączenia ogólnego formatowania dokumentu,
  - `sgh_stripped_tables` do automatycznego formatowania tabel z naprzemiennie podświetlonymi wierszami tabeli,
  - `table_of_contents` do formatowania spisu treści,
  - `sgh_table` do formatowania tabel wymuszającego podanie tytułu i źródła tabeli oraz formatującego oba te elementy,
  - `sgh_figure` do formatowania rysunków wymuszającego podanie tytułu i źródła oraz formatującego oba te elementy,
  - `list_of_tables` do przygotowania spisu tabel,
  - `list_of_figures` do przygotowania spisu rysunków,
  - `list_of_sources` do przygotowania bibliografii w stylu harwardzkim na podstawie wskazanego pliku danych bibliograficznych,
  - `sgh_summary` do umieszczenia streszczenia pracy.

  Na początku zdefiniowana jest, przy użyciu pakietu `theorion`, dodatkowa komenda pozwalająca dodawać do tekstu hipotezy formatowane tak jak inne elementy tekstu naukowego, takie jak twierdzenia, lematy, dowody, etc.
]
// Koniec wstawki z opisem przykładowej pracy dyplomowej

#show: sgh.with(
  author: "Ijon Tichy",
  student_id: "112358",
  title: "Taksonomia i morfologia bytów nieistniejących zamieszkujących mgławice ciemne",
  advisor: "Prof. Astrala Sternu Tarantogi",
  advisor_department: "Katedra Astrognozji i Porównawczego Badania Nicości",
  year: "2025",
  studies: "mgr",
  program: "Kosmologia Paradoksalna",
  language: "pl"
)

#show: sgh_stripped_tables

#table_of_contents()

= Wstęp do ontologii negatywnej

Problem bytów nieistniejących od dawna spędzał sen z powiek kosmologom i filozofom, którzy niepotrzebnie zakładali, że aby coś badać, musi to najpierw posiadać cechę bycia @tarantoga2121. Tymczasem mgławice ciemne, będące obszarami o skrajnie niskim natężeniu sensu, stanowią idealne środowisko dla fauny i flory, która z zasady nie występuje @tarantoga2123.

W trakcie jednej z moich licznych podróży przez mgławice ciemne, natknąłem się na osobliwy przypadek bytu nieistniejącego, który nie tylko nie istniał, ale wręcz aktywnie zaprzeczał własnemu nieistnieniu. Zjawisko to, nazwane przeze mnie *anty-niebytem*, objawiało się nagłym wzrostem poczucia dezorientacji u obserwatora oraz nieodpartą chęcią zapisania czegoś, czego nie sposób było potem odczytać.

Podczas eksperymentu terenowego, wyposażony w spektrometr absencji oraz kwantowy licznik braku, próbowałem zarejestrować obecność niebytu w sektorze Alfa-Null. Wyniki były jednoznaczne: urządzenia wskazywały wartości ujemne, a notatnik samoczynnie wymazywał zapisane obserwacje. Wnioskując z tego, że niebyt nie tylko nie istnieje, ale i nie pozwala na istnienie dowodów swego nieistnienia, postanowiłem zastosować metodę pośrednią — obserwację przez zamknięte oczy.

Wtedy właśnie, wśród ciszy i pustki, usłyszałem głos, który nie był głosem, lecz raczej brakiem echa po myśli, która nie została pomyślana. Głos ten, należący zapewne do jednego z wybitniejszych przedstawicieli niebytu, wyraził stanowczy sprzeciw wobec wszelkich prób klasyfikacji. "Nie liczcie nas, bo znikniecie!" — ostrzegł, po czym zniknął, pozostawiając po sobie ślad w postaci braku śladu.

Tak oto, w duchu najlepszych tradycji kosmologii paradoksalnej, przekonałem się, że badanie niebytu wymaga nie tylko odwagi, ale i umiejętności zapominania tego, czego się dowiedziało. W przeciwnym razie grozi nam bowiem nie tylko utrata sensu, ale i pojawienie się niepożądanego bytu — na przykład recenzenta.

== Morfologia niebytów

Morfologia tych obiektów opiera się na tzw. *paradoksie braku*. Byt nieistniejący nie posiada masy, ale posiada jej brak, co w warunkach próżni generuje ujemny nacisk ontologiczny. Taksonomia tych istot jest utrudniona, gdyż próba ich policzenia często kończy się zniknięciem samego liczącego lub, co gorsza, pojawieniem się obiektu, co z punktu widzenia niniejszej pracy jest błędem metodologicznym.

W trakcie ekspedycji do mgławicy Ciemnej Zeta, wyposażony w najnowszy model detektora nieistnienia (z funkcją automatycznego zapominania wyników), dokonałem kilku obserwacji, które — choć nie zostały zapisane — odcisnęły się wyraźnym brakiem w mojej pamięci. Najbardziej uderzającą cechą niebytów jest ich nieuchwytność: im bardziej próbowałem je opisać, tym mniej ich było, aż w końcu zniknął nie tylko obiekt badań, ale i sam opis.

Przykładowo, podczas eksperymentu z tzw. *niebytem rozproszonym*, po otwarciu pojemnika badawczego stwierdziłem, że nie zawiera on niczego, czego bym się nie spodziewał. Jednak po zamknięciu i ponownym otwarciu, okazało się, że nie zawiera nawet tego. Zjawisko to nazwałem *paradoksem podwójnej pustki*.

Warto również wspomnieć o *niebytach interferencyjnych*, które pojawiają się wyłącznie wtedy, gdy nikt na nie nie patrzy, a znikają natychmiast po odwróceniu wzroku. Próba ich sfotografowania kończy się uzyskaniem zdjęcia przedstawiającego wyłącznie fotografa, który nie wie, po co trzyma aparat.

Wreszcie, wśród mgławicowych niebytów wyróżnić można *byty negatywne*, które nie tylko nie istnieją, ale aktywnie przeszkadzają w istnieniu innym obiektom. Przykładem jest słynny przypadek z ekspedycji na planetę Kurdlową, gdzie cała załoga statku, po kilku dniach pobytu, zaczęła zapominać własne imiona, a dziennik pokładowy samoczynnie wymazywał kolejne wpisy.

Podsumowując, morfologia niebytów mgławicowych jest równie bogata, co nieuchwytna. Każda próba ich klasyfikacji kończy się powstaniem nowych kategorii braku, które natychmiast wymykają się spod kontroli badacza, pozostawiając po sobie jedynie pustkę i lekkie uczucie dezorientacji.

= Przegląd literatury i fundamenty teoretyczne

W literaturze przedmiotu dominuje pogląd, że niebyt jest jednorodny. Jednakże w pracy @pstryk2384 wykazano, że mgławice ciemne są gęsto zaludnione przez tzw. *Absencje Złośliwe*. Autor ten jako pierwszy zastosował aparat matematyczny do opisu natężenia braku obiektu w danej jednostce objętości.

Kluczowym elementem analizy jest *Współczynnik Nierzeczywistości Tichego-Tarantogi*, który opisuje równanie @eq:współczynnik.

$
  aleph_0 = lim_(x -> oo) (Phi dot sqrt(-1))/(Psi_x)
$<eq:współczynnik>

W równaniu @eq:współczynnik stała $Phi$ określa fluktuacje nastroju badacza, a $Psi_x$ to gęstość prawdopodobieństwa, że nikt na to nie patrzy.

W Tabeli @tab:niebyty przedstawiono klasyfikację najczęściej "nie-spotykanych" bytów.

#sgh_table(
  caption: [Klasyfikacja bytów nieistniejących w zależności od stopnia deprywacji rzeczywistości.],
  source: [Opracowanie własne przygotowane w trakcie podróży do mgławicy Ciemnej Zeta.],
  table(
    columns: 4,
    align: (left, left, left, left),
    table.header([Typ bytu], [Gęstość bytu\ \[kg/m³\]], [Charakterystyka\ wizualna], [Uwagi]),
    [*Nicość\ rzadka*], [$0,00$], [Przezroczysta, ale smutna], [Często mylona z przeciągiem.],
    [*Omam\ grawitacyjny*], [$1,42$], [Kształt przypominający dług], [Powoduje znikanie portfeli.],
    [*Sepulk\ metizyczny*], [brak danych], [\[ZAKRYTO\]], [Zobacz: @pstryk2384]
  )
)<tab:niebyty>

W literaturze przedmiotu nie brak prób klasyfikacji niebytów, lecz każda z nich kończy się niepowodzeniem, gdyż obiekty badań znikają szybciej, niż powstają definicje. Sam, podczas ekspedycji do mgławicy Ciemnej Zeta, próbowałem sporządzić katalog nieistniejących bytów, lecz za każdym razem, gdy kończyłem wpis, okazywało się, że nie tylko nie ma bytu, ale i katalogu. W efekcie powstała najpełniejsza z możliwych lista — pusta.

Warto zauważyć, że niebyty wykazują osobliwą odporność na wszelkie próby opisu. Gdy tylko badacz zbliży się do granicy poznania, niebyt natychmiast ją przesuwa, pozostawiając po sobie jedynie echo niepamięci. Przypomina to nieco sytuację z podróży na planetę Kurdlową, gdzie mieszkańcy, nie chcąc dopuścić do powstania spisu ludności, nauczyli się znikać na zawołanie, a ich domy były zbudowane z mgły i domysłów.

Wśród niebytów szczególne miejsce zajmuje tzw. *niebyt paradoksalny*, który nie tylko nie istnieje, ale i nie pozwala na istnienie samej kategorii niebytu. Spotkałem się z nim raz, podczas eksperymentu z detektorem absencji: urządzenie wskazało obecność braku, po czym samo przestało istnieć, pozostawiając po sobie rachunek za naprawę.

Niebyty mgławicowe wykazują także tendencję do interferencji z rzeczywistością. Przykładem może być przypadek *niebytu interferencyjnego*, który pojawia się wyłącznie wtedy, gdy nikt na niego nie patrzy, a znika natychmiast po odwróceniu wzroku. Próba jego sfotografowania kończy się uzyskaniem zdjęcia przedstawiającego wyłącznie fotografa, który nie wie, po co trzyma aparat.

Podsumowując, klasyfikacja bytów nieistniejących jest zadaniem tyleż fascynującym, co beznadziejnym. Każda próba uchwycenia ich istoty kończy się powstaniem nowych kategorii braku, które natychmiast wymykają się spod kontroli badacza, pozostawiając po sobie jedynie pustkę i lekkie uczucie dezorientacji — co, jak sądzę, jest najlepszym dowodem na ich istnienie, a raczej nieistnienie.

Zgodnie z ustaleniami komisji międzygalaktycznej @komisja2124, byty te podlegają prawu zachowania braku. Na tej podstawie sformułowałem hipotezy badawcze.

#hipoteza(title: "Hipoteza o Konserwacji Próżni Myślowej")[Suma wszystkich bytów nieistniejących w zamkniętym układzie mgławicy jest stała i równa objętości głowy badacza, który zapomniał, po co tam poleciał.]<hip:konserwacja>

#hipoteza(title: "Hipoteza o Samozaprzeczeniu Bytu")[Każdy byt nieistniejący, który zostanie zaobserwowany, natychmiast przestaje być nieistniejący, lecz tylko do momentu, gdy obserwator zapomni, co widział. Wtedy byt powraca do stanu nieistnienia, a obserwator zyskuje przekonanie, że nic się nie wydarzyło.]<hip:samozaprzeczenie>

#hipoteza(title: "Hipoteza o Interferencji Absencji")[Niebyty mgławicowe mogą interferować ze sobą, tworząc zjawiska absencji skumulowanej, w której brak jednego bytu wzmacnia brak drugiego, prowadząc do powstania lokalnych anomalii poznawczych, takich jak nagłe poczucie pustki lub utrata wątku podczas pisania pracy dyplomowej.]<hip:interferencja>

#hipoteza(title: "Hipoteza o Paradoksie Opisu")[Im dokładniej próbujemy opisać byt nieistniejący, tym bardziej opis ten staje się nieczytelny, aż w końcu znika zarówno opis, jak i opisujący. Zjawisko to tłumaczy brak literatury przedmiotu oraz częste znikanie recenzentów.]<hip:paradoks-opisu>

Aby lepiej zrozumieć termodynamikę niebytu, niezbędne jest przeanalizowanie stanów skupienia, w jakich może występować brak materii. Wykres fazowy na Rysunku @rys:wykres, opracowany na podstawie ryzykownych eksperymentów w Mgławicy Koński Łeb, ilustruje te zależności.

#sgh_figure(
  caption: [Diagram fazowy stanów nieistnienia.],
  source: [Opracowanie własne na podstawie danych z czarnych skrzynek rakiet, które nigdy nie wróciły.],
  rect(
  width: 12cm,
  height: 6cm,
  stroke: 1pt + green,
  )[
    #align(center + horizon)[Diagram fazowy, który wstawimy korzystając z `#image()`]
  ]
)<rys:wykres>

Wykres pokazuje zależności między Ciśnieniem Ontologicznym a Natężeniem Absurdu. Widać wyraźnie, że stan rzeczywisty jest jedynie niewielką, niestabilną anomalią w lewym dolnym rogu. Po przekroczeniu *Punktu Krytycznego Tarantogi* materia przechodzi w stan *Nicości Złośliwej*.

= Badania empiryczne w mgławicach ciemnych

== Przebieg badań

=== Dzień pierwszy.

Wyruszyłem w kierunku mgławicy Ciemnej Zeta, wyposażony w spektrometr absencji, kwantowy licznik braku oraz notatnik samowymazujący. Już na wstępie zauważyłem, że im bardziej zbliżałem się do celu, tym mniej miałem pewności, czy w ogóle gdziekolwiek zmierzam. Wskaźniki pokładowe wskazywały wartości ujemne, a komputer pokładowy zaczął zadawać pytania o sens własnego istnienia.

=== Dzień drugi.

Po dotarciu na miejsce, postanowiłem przeprowadzić eksperyment z detektorem nieistnienia. Urządzenie, po krótkim namyśle, wyświetliło komunikat: "Brak obiektu do wykrycia. Proszę spróbować nie patrzeć." Zastosowałem się do instrukcji, zamknąłem oczy i natychmiast poczułem obecność niebytu, który objawił się jako delikatne mrowienie w okolicach brwi oraz nieodparta chęć zapisania czegoś, czego nie sposób potem odczytać.

=== Dzień trzeci.

Próbowałem sfotografować niebyt interferencyjny. Po wywołaniu zdjęcia okazało się, że przedstawia ono wyłącznie mnie, patrzącego zdezorientowanym wzrokiem w obiektyw. Notatnik samoczynnie wymazał opis eksperymentu, pozostawiając po sobie jedynie pustą stronę i adnotację: "Tu nic nie było."

=== Dzień czwarty.

Przeprowadziłem próbę schwytania nicości w słoik. Po otwarciu pojemnika stwierdziłem, że nie zawiera on niczego, czego bym się nie spodziewał. Jednak po zamknięciu i ponownym otwarciu, okazało się, że nie zawiera nawet tego. Zjawisko to potwierdziło hipotezę o paradoksie podwójnej pustki.

=== Dzień piąty.

Spotkałem przedstawiciela niebytu negatywnego. Byt ten nie tylko nie istniał, ale aktywnie przeszkadzał mi w prowadzeniu badań — komputer pokładowy zaczął zapominać własne hasła, a spektrometr absencji wyświetlił komunikat: "Błąd: brak błędu."

== Podsumowanie badań.

Empiryczna analiza bytów nieistniejących w mgławicach ciemnych wykazała, że każda próba ich uchwycenia kończy się powstaniem nowych kategorii braku, które natychmiast wymykają się spod kontroli badacza. Wyniki eksperymentów, choć nieuchwytne, potwierdzają słuszność sformułowanych hipotez oraz wskazują na konieczność dalszych badań z wykorzystaniem jeszcze bardziej zaawansowanych metod zapominania. Wyniki te sugerują, że niebyt wykazuje właściwości dynamiczne, zmieniając swoje parametry w zależności od stopnia uwagi badacza. Ponadto, zaobserwowano korelację pomiędzy natężeniem absencji a częstotliwością występowania zjawisk paradoksalnych, co otwiera nowe perspektywy dla przyszłych badań nad interakcjami niebytu z rzeczywistością.

= Podsumowanie i wnioski

Badania nad morfologią niebytu w mgławicach ciemnych prowadzą do wniosku, że wszechświat jest znacznie bardziej pusty, niż nam się wydaje, a to, co bierzemy za materię, jest jedynie rzadkim zanieczyszczeniem w doskonałej strukturze nicości. Wykorzystanie wzorów Tarantogi pozwoliło na udowodnienie, że byt nieistniejący jest stabilny tylko pod warunkiem, że nie jest opisywany w pracach dyplomowych, co stawia niniejszą pracę w kłopotliwym położeniu logicznym.

Dalsze badania powinny skupić się na próbie nabicia nicości w butelkę, co Profesor Tarantoga planuje zrealizować podczas najbliższych ferii na planecie Kurdlowej. Na Rysunku @rys:pułapka znajduje się schemat ideowy urządzenia, nad którym prace trwają w laboratorium profesora Tarantogi. Jest to pierwsza w historii próba praktycznego zastosowania teorii niebytu w celu jego schwytania i butelkowania. Centralnym elementem jest komora kondensacji próżni absolutnej, zasilana przez generator pola paradoksalnego. Urządzenie posiada wlot zasysający brak oraz specjalny filtr sensu, który odrzuca wszelką przypadkową materię. Produkt końcowy trafia do pojemnika na skroploną nicość w kształcie Butelki Kleina.

#sgh_figure(
  caption: [Schemat pułapki na Nicość prof. Tarantogi.],
  source: [Tarantoga, S. (niepublikowane notatki warsztatowe, poplamione kawą). Szkice do aparatury ostatecznej. Archiwum prywatne na strychu.],
  rect(
  width: 12cm,
  height: 6cm,
  stroke: 1pt + green,
  )[
    #align(center + horizon)[Rysunek butelki Kleina wypełnionej nicością.]
  ]
)<rys:pułapka>

Warto pamiętać, że większość pionierskich prac prof. Tarantogi (takich jak wynalezienie płynu do wywabiania nieprzyjemnych wspomnień czy budowa rakiety z części zamiennych do młockarni) realizowana jest w jego prywatnej rezydencji na Ziemi, która de facto pełni funkcję jednoosobowej jednostki badawczej o najwyższym stopniu prestiżu. Prof. Tarantoga współpracuje również z wieloma instytutami międzygalaktycznymi.

#list_of_sources("sources.bib")

#list_of_figures()

#list_of_tables()

#sgh_summary[
  Praca analizuje strukturę i klasyfikację istot zamieszkujących ciemne mgławice, które charakteryzują się całkowitym brakiem istnienia. Przy wykorzystaniu autorskich wzorów matematycznych oraz obserwacji własnych autora, udowodniono, że niebyt posiada złożoną morfologię, a jego badanie jest możliwe wyłącznie przy zachowaniu odpowiedniego stopnia niewiedzy badawczej.
]
