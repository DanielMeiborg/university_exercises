#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [GBI WS 24/25 – Übungsblatt 1],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
  ))

#set heading(numbering: none)
#set text(lang: "de")

= Aufgabe 1

== a

D Seien $A,B$ und $C$ beliebige Mengen. Wir zeigen, dass $(A∪B)×C⊆(A×C)∪(B×C)$.

N Sei $(x, y)∈(A∪B)×C$ beliebig

B Es gilt, dass $x∈A∪B$ und $y∈C$.

P Wir machen eine Fallunterscheidung.

F Fall 1:$x∈A$ (und weiterhin $y∈C$).

J Dann ist $(x, y)∈A×C$ und insbesondere $(x, y)∈(A×C)∪(B×C)$.

H Fall 2: $x∈B$ (und weiterhin $y∈C$).

M Dann ist $(x, y)∈B×C$ und insbesondere $(x, y)∈(A×C)∪(B×C)$.

K Damit sind alle möglichen Fälle abgedeckt. Da wir sowohl $A,B$ und $C$ als auch $(x, y)$ beliebig gewählt haben, folgt die Aussage.

== b

zz: $(A×C) union (B×C)⊆(A union B)×C$

Sei ein beliebiges $(x, y)∈(A×C)∪(B×C)$.

Dann gilt $(x, y) in (A times C) or (x, y) in (B times C)$.

Somit ist $y$ in jedem Fall in $C$.

$x$ kann sowohl in $A$ als auch in $B$ liegen.

Daraus folgt, dass $(x, y)∈(A∪B)×C$ $qed$.

= Aufgabe 2


== a
// TODO

== b

$f(n) = n + 1$ mit $n in NN$ $f$ ist injektiv, aber nicht surjektiv da kein $n$ mit $f(n) = 1$

== c

Gegenbeispiel: $f(x) = e^x, g(x) = x², h(x) = e^(2x)$. $h(x)$ ist injektiv, $g(x)$ aber nicht.

== d

// TODO

= Aufgabe 3

== a

linkstotal, rechtstotal, nicht linkseindeutig, nicht rechtseindeutig

== b

$[-5, 10] times [-2, 10]$

== c

$L = { (x, |x| - 2) | x in [-5, 3]}$

#image("./graph.png")

== d

$L'' = {(x, -x) | x in [-4, 0]} union {(x, x - 2) | x in (0, 2]}$

#image("./graph2.png")

= Aufgabe 4

== a

$"sieht"_B((1,4)) = {(1,1), (5,4)}$

== b
// TODO

== c

// TODO

== d

$n_"rot" = |{x | x in "sieht"_B(f) and x in B_"rot"}|$

$n_"weiß" = |{x | x in "sieht"_B(f) and x in B_"weiß"}|$

$"kontrolliert"_B (f) = "rot" "wenn" n_"rot" > n_"weiß"$

$"kontrolliert"_B (f) = "weiß" "wenn" n_"rot" < n_"weiß"$

$"kontrolliert"_B (f) = ⊥ "wenn" n_"rot" = n_"weiß"$