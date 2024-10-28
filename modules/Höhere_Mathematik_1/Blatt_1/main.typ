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

$A = {y/(x y)-x/(x y): x,y in RR, x,y >= 1} = {(y-x)/(x y): x,y in RR, x,y >= 1}$

Da $x,y >= 1$ ist

== b

$"zz" : M "ist nach unten unbeschränkt"$

Angenommen, $s$ sei eine untere Schranke von $M$.

Sei $x in M$. Da $s$ eine untere Schranke ist, gilt $s < x => s - 1 < x$. Aus $(i)$ folgt $(s - 1) in M$. Damit ist ein Element in $M$ kleiner als $s$, womit $s$ keine untere Schranke sein kann. $qed$

$"zz": M "ist nach oben offen"$

Angenommen, $sup(M) in M$. Aus $("ii")$ folgt dass es ein $y in M$ gibt, sodass $y > sup(M)$. Das steht im Widerspruch zur Definition des Supremums. $qed$







---

Wird nicht bewertet :(



= Aufgabe 3

== a
symmetrisch, +infty nicht, 0 nicht, 1 nicht, 2/3<= -1/3 => >= 1 nicht

$1-1/(1+x) = 1/(1-x)$

???

$x in (-1,1)$

== b

=== i

$"zz": a < b and 0 < c => a c < b c$

$A 14: a <= b and 0 <= c => a c <= b c$

$a c = b c$ genau dann, wenn $a = b$ oder $c = 0$. Da $a < b$ und $c > 0$ vorausgesetzt wird, ist $a c < b c$. $qed$

=== ii

$"zz": a <= b and c <= 0 => a c >= b c$

$a c = a (-c) >= b (-c)$

Da $-c$ positiv ist, folgt aus $(i)$, dass $a (-c) >= b (-c)$. $qed$

=== iii

$"zz" : a <= b and c <= d => a + c <= b + d$

$(b-a)$ und $(d-c)$ sind positiv da $a <= b$ und $c <= d$. Aus $"A14"$ folgt $a + c <= a + (b-a) + c + (d-c)$.

$=> a + c <= b + d qed$

= Aufgabe 4

== a

=== i

Da $x²$ für ein $x in RR$ stets positiv ist (siehe Beispiel 1.3), ist auch $x⁴$ stets positiv. $A$ hat demnach ein Mimimum bei $x = 0$. $x = 625$ ist ein Maximum von $A$, da $625 = (-5)⁴$.

// zeigen dass Supremum

=== ii

$B$ hat Minimum 0, da $x = 0 => (|0|)/(1 + |0|) = 0 in B$. $B$ hat Supremum $1$ aber kein Maximum.

//  beweisen
