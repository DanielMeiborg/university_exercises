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

= Aufgabe 1

== a

=== i

$|x + 7| - 2x <= 5$

$x >= 7 => x+7-2x <= 5 => -x <= -2 => x >= 2$

$x < 7 => -(x+7) -2x <= 5 => -3x <= -2 => x >= 2/3$

$=> x in [2, infinity) qed$

=== ii

$0 <= x²-4x-5 => (4 +- sqrt(16+20)) / (2) => 5 or -1$

$=> x in (infinity, -1] union [5, infinity) qed$

== b

=== i

$(2, 8) sect (-8, 6) => (2, 6) qed$

=== ii

x kann als immer positiv angenommen werden da nur in Betrag oder Quadrat

$x $