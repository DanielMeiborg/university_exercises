#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [GBI WS 24/25 – Übungsblatt 1],
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

Gegenbeispiel:

$B = {1}$

$2^B = {{}, {1}}$

$A = {{}, ({1}, {})$

$A times 2^B = {({}, {}), ({}, ({1}, {})), ({1}, {}), ({1}, ({1}, {}))}$

$(A times 2^B) sect A = {({1}, {})} != {}$

== b

$f(n) = n + 1$ mit $n in NN$ $f$ ist injektiv, aber nicht surjektiv da kein $n$ mit $f(n) = 1$

== c

Gegenbeispiel: $f(x) = e^x, g(x) = x², h(x) = e^(2x)$. $h(x)$ ist injektiv, $g(x)$ aber nicht.

== d

// TODO

zz: $A, B$ sind endliche Mengen mit $|A| = |B|$, $f: A -> B$: $f$ injektiv => $f$ surjektiv


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

$"sieht"_B((1,4)) = {(1,1), (1,2), (1,3), (2,4), (3, 4), (4,4), (5,4), (2,5), (3, 6), (4,7), (5,8), (6,9), (7,10), (8,11), (1, 5), (1,6)}$

== b

$n in NN$

$"sieht"'(f) = ({(f_1, n) | (f_1, f_2) = f} union {(n, f_2) | (f_1, f_2) = f} union {(f_1 + z, f_2 + z)} | z in ZZ and f_1 + z > 0 and f_2 + z > 0) without f$

== c

$"sieht"_B(f) = {g | g in "sieht"'(f) and "getrennt"(f, g) = 0}$

== d

$n_"rot" = |{x | x in "sieht"_B(f) and x in B_"rot"}|$

$n_"weiß" = |{x | x in "sieht"_B(f) and x in B_"weiß"}|$

$"kontrolliert"_B (f) = "rot" "wenn" n_"rot" > n_"weiß" and not f in B_"rot"$

$"kontrolliert"_B (f) = "weiß" "wenn" n_"rot" < n_"weiß" and not f in B_"weiß"$

$"kontrolliert"_B (f) = ⊥ "wenn" n_"rot" = n_"weiß" or f in B_"rot" or f in B_"weiß"$