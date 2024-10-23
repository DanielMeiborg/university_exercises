#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [GBI WS 24/25 – Übungsblatt 0],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
  ))

#set heading(numbering: none)

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

...

= Aufgabe 3

Die Mächtigkeit jeder Teilmenge $E$ von dem Kreuzprodukt einer endlichen Menge $V$ mit sich selbst ent