#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [GBI WS 24/25 – Übungsblatt 2],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
    (
      name: "Jan Mansel 2599265"
    )
  ))

#set heading(numbering: none)
#set text(lang: "de")

= Aufgabe 1

== a

Nein, da für $|w_1| = |w_2|$ die Abbildung nicht definiert ist.

== b

Nein, da für $|w_1| = |w_2|$ die Abbildung sowohl als $w_1 dot w_2$ als auch $w_2 dot w_1$ definiert ist.

== c

$dot.circle'' arrow.tail cases(
  w_1 dot w_2 "falls" |w_1| < |w_2|,
  w_2 dot w_1 "falls" |w_1| >= |w_2|
)$

Die Abbildung ist wohldefiniert, da es für jede Kombination von $|w_1|$ und $|w_2|$ eine eindeutige Zuordnung gibt (die natürlichen Zahlen sind geordnet).

== d

$f(w) = product_(n=1)^(|w|) w(|w| - n + 1)$

= Aufgabe 2

== a

=== linkstotal

Nein

Es gibt Menschen, die niemandes Großvater sind.

=== rechtstotal

Nein

Es gibt Menschen, die keine Großväter haben, die zur Zeit der Veröffentlichung des Übungsblatts noch am Leben sind.

=== linkseindeutig

Nein

Es gibt Menschen, die mehrere Großväter haben.

=== rechtseindeutig

Nein

Es gibt Menschen, die von mehreren Enkeln Großvater sind.

== b

=== linkstotal

Ja

Es gibt keine Studierenden am KIT, die nicht in einem Studiengang eingeschrieben sind.

=== rechtstotal

Ja

Es gibt (vermutlich?) keine Studiengänge am KIT, in die niemand eingeschrieben ist.

=== linkseindeutig

Nein

Die meisten Studiengänge am KIT haben mehrere Studierende.

=== rechtseindeutig

Nein

Es gibt Studierende, die in mehreren Studiengängen eingeschrieben sind.

== c

=== linkstotal

Ja

Jedes Gericht hat einen Geldbetrag.

=== rechtstotal

Nein

es gibt Geldbeträge (z.B. 1000000€), die kein Gericht in der Mensa haben.

=== linkseindeutig

Nein

Es gibt Gerichte, die gleich viel kosten.

=== rechtseindeutig

Ja

Die Gerichte in der Mensa haben einen eindeutigen Geldbetrag.

== d

=== linkstotal

Ja

Jeder Studierende hat eine Matrikelnummer.

=== rechtstotal

Nein, es gibt nicht so viele Studierende wie mögliche Matrikelnummern,

=== linkseindeutig

Ja

Jeder Studierende hat eine eindeutige Matrikelnummer.

=== rechtseindeutig

Ja

Die Matrikelnummer ist per Design eindeutig.

= Aufgabe 3

== a

$R_1$ ist konfluent, da für jedes $y in M$ (also $a$ oder $b$) für $z = a$ $(a,a) "und" (b,a)$ in $R_1$ sind

== b

$R_2$ ist konfluent, da die Bedingung $(x,y_1), (x,y_2) in R$ nie erfüllt ist.

== c

$R_3$ ist konfluent: für jedes $(x,y_1), (x,y_2) in R$ ist $|x| + 1 = |y_1| = |y_2|$ und es gibt ein $z = y_1 dot a in A^*$ mit $(y_1, z), (y_2, z) in R$ da $|y_1 dot a| = |y_1| + 1 = |y_2| + 1$.

== d

$R_4$ ist nicht konfluent: Gegenbeispiel: $x = "a", y_1 = "aa", y_2 = "ab"$. Ein $z$ müsste sowohl "aba" als auch "abx" (für ein beliebiges $x in A$) entsprechen. Das ist nicht möglich.

== e

zz: jede symmetrische Relation ist auch konfluent

für jedes $(x, y_1), (x,y_2) in R$ gilt $exists z = x in M: (y_1, z), (y_2) in R$ da $R$ symmetrisch ist.

== f

Beweis durch Gegenbeispiel: $R = {(x, y) | x = a^n, y = a^(n+1)m n in NN} = {("a", "aa"), ("aa", "aaa"), ...}$

Die Relation ist konfluent, da aus $(x,y_1), (x,y_2) in R$ $y_1 = y_2$ folgt. $z$ ist dann $y_1 dot a$. Die Relation ist aber nicht symmetrisch.

= Aufgabe 4

== a

ggegehgehegeheissisinsinm

== b

$"substr"(w, i, j) = cases(
  i <= j <=|w|: product_(n=i)^j w(n),
  "ansonsten": epsilon
)$

== c

$A'(w) = product_(n=1)^(|w|) "substr"(w, 1, n)$

== d

$A(w) = A'("substr"(w,1, ceil((|w|) / 2))) dot A'("spiegeln"("substr"(w,ceil((|w|) / 2), |w|)))$