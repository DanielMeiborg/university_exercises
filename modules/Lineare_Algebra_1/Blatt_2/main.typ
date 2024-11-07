#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [LA WS 24/25 – Übungsblatt 2],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
  ))

#set heading(numbering: none)
#set text(lang: "de")

= Aufgabe 2

== a

=== injektiv

$f = (x, y) => x + y$

$x_1 + y_1 = x_2 + y_2 =>? x_1 = x_2 and y_1 = y_2$

Nicht injektiv, da $f(1, 2) = f(2, 1)$

=== surjektiv

$forall z in RR: exists x, y in RR: x + y = z$

Für $y = 0$ und $x = z$ ist $x + y = z$ $=>$ surjektiv.

Umkehrabbildung: $g: RR -> RR times RR, (x) -> (x, 0)$

== b

$f = (x, y) => (x + 2y, 2x - y)$

=== injektiv

$x_1 + 2y_1 = x_2 + 2y_2 and 2x_1 - y_1 = 2x_2 - y_2 =>? x_1 = x_2 and y_1 = y_2$

Umformen der Gleichungen:

$x_1 = x_2 + 2y_2 - 2y_1$

$<=> 2x_2 + 4y_2 - 4y_1 - y_1 = 2x_2 - y_2$

$<=> 5y_2 - 5y_1 = 0$

$<=> y_2 = y_1$

$<=> x_1 = x_2$

Somit ist $f$ injektiv.

=== surjektiv

$forall (z_1, z_2) in RR times RR: exists (x, y) in RR times RR: x + 2y = z_1 and 2x - y = z_2$

$-5y = z_2 - 2z_1$

$<=> y = 2/5 z_1 - z_2/5$

$-3x = z_1 - 2z_2$

$<=> x = 2/3 z_2 - z_1 / 3$

Somit ist $f$ bijektiv.

Umkehrabbildung: $g: RR times RR -> RR times RR, (z_1, z_2) -> (2/3 z_2 - z_1 / 3, 2/5 z_1 - z_2/5)$

== c

$f: RR_+ -> RR_+, x -> x² + 1$

=== injektiv

$x_1² + 1 = x_2² + 1 =>? x_1 = x_2$

$x_1² = x_2²$

Da $x_1, x_2 in R_+$, ist $x_1 = x_2$ und $f$ somit injektiv.

Umkehrabbildung: $g: R_+ -> R_+, x -> sqrt(x - 1)$

=== surjektiv

Nein, da $f(x) >= 1$ für alle $x in R_+$.

== d

$f: ZZ times ZZ -> ZZ times ZZ, (x, y) -> (2x + y, x + y)$

=== injektiv

$2x_1 + y_1 = 2x_2 + y_2 and x_1 + y_1 = x_2 + y_2 =>? x_1 = x_2 and y_1 = y_2$

Zweite Gleichung von erster subtrahieren:

$2x_1 - x_1 + y_1 - y_1 = 2x_2 - x_2 + y_2 - y_2 <=> x_1 = x_2$

Einsetzen in zweite Gleichung:

$x_2 + y_1 = x_2 + y_2 <=> y_1 = y_2$

Somit ist $f$ injektiv.

=== surjektiv

$forall (z_1, z_2) in ZZ times ZZ: exists (x, y) in ZZ times ZZ: 2x + y = z_1 and x + y = z_2$

$x = z_1 - z_2$

$-y = z_1 - 2z_2$

$y = 2z_2 - z_1$

Somit ist $f$ bijektiv.

Umkehrabbildung: $g: ZZ times ZZ -> ZZ times ZZ, (z_1, z_2) -> (z_1 - z_2, 2z_2 - z_1)$

= Aufgabe 3

$f: M -> N$

== a

zz: $forall B subset N: f(f^(-1)(B)) subset.eq B$

Angenommen, es gibt ein $a in B$ sodass $f(f^(-1)(a)) not in B$

Per Definition der Umkehrfunktion $f compose f^(-1) = id$

$=> f(f^(-1)(a)) = a$

Da $a in B$ angenommen ist, ist $f(f^(-1)(a)) = a in B$ was ein Widerspruch ist. $qed$

== b

zz: $f "surjektiv" <=> forall B subset N: f(f^(-1)(B)) = B$

=== $=>$

Aus a folgt, dass $f(f^(-1)(B)) subset.eq B$

Angenommen, es gibt ein $b in f(f^(-1)(B))$ sodass $b not in B$.

Sei $a$ so dass $b = f(a)$ und $c$ so dass $a = f^(-1)(c)$.

