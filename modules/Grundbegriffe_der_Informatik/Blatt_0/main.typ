#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [GBI WS 24/25 – Übungsblatt 0],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
  ))

#set heading(numbering: none)
#set text(lang: "de")

= Aufgabe 2

== a

$A = {1, 2}$

$B = {2, 3}$

$ (A union B) \\ B = {1} != A union (B \\ B) = A union emptyset = {1, 2} qed$

== b

$A = {1, 2}$

$B = emptyset$

$|A times B| = 0$

$|A| = 2 > |A times B| qed$

== c

$A = {1, 2}$

$B = {1, 3}$

$C = {2, 3}$

$A sect B = {1}$

$A sect B sect C = emptyset qed$

== d

$A = {1, {1}}$

$B = {1}$

= Aufgabe 3

Die Aussage sagt aus, dass man die Elemente einer Teilmenge eines kartesisches Produktes einer Menge mit sich selbst sowohl nacheinander als auch "spaltenweise" zählen kann. Für jedes Element in der Menge werden alle Elemente der Teilmenge gezählt, die dieses Element an erster Stelle haben. Die Summe dieser Zählungen entspricht der Anzahl aller Elemente der Teilmenge. Würde man das kartesische Produkt in einer Tabelle darstellen, so würde man bei der Zählung jede Spalte/Zeile einzeln durchgehen und jeweils die vorhandenen Elemente zählen. Die Aussage gibt an, dass man dadurch jedes Element der Teilmenge genau einmal zählt.

= Aufgabe 4

== a

Wort:

$B.C.A.C$

Dekodiert Alice:

$011.01.1.01$

Dekodiert Bob:

$01.1.0110.1$

== b

