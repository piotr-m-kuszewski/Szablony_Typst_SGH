// Przykład wersji ostatecznej pracy dyplomowej z komentarzami promotora wpisanymi w tekst.
// Komentarze są wyłączone (advisor-comments: false), więc PDF wygląda tak, jakby ich nie było.
// Wersję roboczą z komentarzami na marginesie daje polecenie, bez zmiany tego pliku:
//   typst compile --input advisor-comments=true sgh-thesis-example-final-pl.typ
#import "sgh-thesis.typ": *

#show: sgh.with(
  author: "Ijon Tichy",
  student-id: "112358",
  title: [O zjawisku braku\ w mgławicy Ciemnej Zeta],
  advisor: "Prof. Astrala Sternu Tarantogi",
  advisor-department: "Katedra Astrognozji i Porównawczego Badania Nicości",
  year: "2025",
  studies: "lic",
  program: "Kosmologia Paradoksalna",
  language: "pl",
  advisor-comments: false,
)

#show: sgh-stripped-tables

#table-of-contents()

= Wstęp

#sgh-comment[Proszę we wstępie postawić pytanie badawcze.][Pytanie dodałem w drugim akapicie.][Dobrze.]Mgławica Ciemna Zeta należy do najsłabiej zbadanych obszarów Galaktyki, co nie dziwi, bo badać w niej można wyłącznie to, czego tam nie ma @tarantoga2121. Niniejsza praca opisuje kilka wypraw, podczas których nie udało mi się niczego zaobserwować, oraz wnioski, jakie z tego płyną.

Pytanie badawcze brzmi: czy brak w mgławicy jest jednorodny, czy też tworzy skupiska? Odpowiedź wymagała pomiarów, które #sgh-comment[Jakich pomiarów? Proszę podać przyrządy.]przeprowadziłem spektrometrem absencji i kwantowym licznikiem braku, kalibrowanymi na pustym słoiku.

Wyniki pomiarów potwierdzają hipotezę o skupiskach braku, sformułowaną po raz pierwszy przez Pstryka @pstryk2384, choć sam autor do dziś nie jest pewien, czy ją sformułował.#sgh-comment[Ostatnie zdanie jest zbyt żartobliwe jak na pracę dyplomową.]

= Wyniki pomiarów

Pomiary prowadziłem przez pięć dni pokładowych, notując natężenie braku #sgh-comment(resolved: true)[Literówka w jednostce natężenia braku.][Poprawione.]w trzech sektorach mgławicy. Zestawienie przedstawia Tabela @tab:pomiary.

#sgh-table(
  caption: [Natężenie braku w sektorach mgławicy Ciemnej Zeta.],
  source: [Opracowanie własne na podstawie dziennika pokładowego.],
  table(
    columns: 3,
    align: (left, left, left),
    table.header([Sektor], [Natężenie braku], [Uwagi]),
    [Alfa-Null], [0,8], [Brak wyraźny],
    [Beta-Zero], [#sgh-comment[Skąd ta wartość? W dzienniku jest 1,24.]1,42], [Brak skupiony],
    [Gamma-Nic], [brak danych], [Licznik zniknął],
  ),
)<tab:pomiary>

Natężenie braku jest najwyższe w sektorze Beta-Zero, co przemawia za hipotezą o skupiskach. Komisja międzygalaktyczna @komisja2124 zaleca jednak ostrożność, bo wyższe natężenie braku może oznaczać po prostu, że w sektorze zabrakło także badacza.

#list-of-sources(read("sources.bib", encoding: none))
