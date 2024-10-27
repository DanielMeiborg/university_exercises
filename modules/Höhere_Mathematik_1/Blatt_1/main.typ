#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [HM WS 24/25 – Übungsblatt 0],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
  ))

#set heading(numbering: none)
#set text(lang: "de")

= Aufgabe 1

== a

=== i

$|x + 7| - 2x <= 5$

$x >= 7 => x+7-2x <= 5 => -x <= -2 => x >= 2$

$x < 7 => -(x+7) -2x <= 5 => -3x <= -2 => x >= 2/3$

$=> x in [2, infinity) qed$

=== ii

$0 <= x²-4x-5 => (4 plus.minus sqrt(16+20)) / (2) => 5 or -1$

$=> x in (infinity, -1] union [5, infinity) qed$

== b

=== i

$(2, 8) sect (-8, 6) => (2, 6) qed$

=== ii

Fall $x$ positiv:

$x² <= 4x -3$

$0 = -x² + 4x - 3 => x = (-4 plus.minus sqrt(16 -12))/2 => x = -1 or x = -3$

$=> x in [-3, -1] union [1, 3]$

= Aufgabe 2

== a

=== i

$A = {1/x - 1/y: x,y in RR, x,y >= 1}$

zz: $A = (-1, 1)$

