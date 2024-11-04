#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [LA WS 24/25 – Übungsblatt 1],
  authors: (
    (
      name: "Daniel Meiborg 2599041",
    ),
  ))

#set heading(numbering: none)
#set text(lang: "de")

= Aufgabe 2

== a

$"zz": not (A and B) <=> (not A) or (not B)$

#table(
  columns: 5,
  [$A$], [f], [w], [f], [w],
  [$B$], [f], [f], [w], [w],
  [$A and B$], [f], [f], [f], [w],
  [$not (A and B)$], [w], [w], [w], [f],
  [$not A$], [w], [f], [w], [w],
  [$not B$], [w], [w], [f], [w],
  [$(not A) or (not B)$], [w], [w], [w], [f],
  [$not (A and B) <=> (not A) or (not B)$], [w], [w], [w], [w]
)

== b

$"zz": not (A or B) <=> (not A) and (not B)$

#table(
  columns: 5,
  [$A$], [f], [w], [f], [w],
  [$B$], [f], [f], [w], [w],
  [$A or B$], [f], [w], [w], [w],
  [$not (A or B)$], [w], [f], [f], [f],
  [$not A$], [w], [f], [w], [f],
  [$not B$], [w], [w], [f], [f],
  [$(not A) and (not B)$], [w], [f], [f], [f],
  [$not (A or B) <=> (not A) and (not B)$], [w], [w], [w], [w]
)

== c

$A or (B and C) <=> (A or B) and (A or C)$

#table(
  columns: 10,
  [$A$], [f], [w], [f], [w], [f], [w], [f], [w], [f],
  [$B$], [f], [f], [w], [w], [f], [f], [w], [w], [f],
  [$C$], [f], [f], [f], [f], [w], [w], [w], [w], [w],
  [$A or (B and C)$], [f], [w], [f], [w], [f], [w], [w], [w], [f],
  [$(A or B) and (A or C)$], [f], [w], [f], [w], [f], [w], [w], [w], [f],
  [$A or (B and C) <=> (A or B) and (A or C)$], [w], [w], [w], [w], [w], [w], [w], [w], [w]
)

= Aufgabe 3

== a

zz: $M = {a/2 + b/3 | a, b in ZZ} = N = {c/6 | c in ZZ}$

Fall $M in N$:

Sei $x in M$

Dann ist $x = a/2 + b/3 = c/6 => 3a + 2b = c$

Da $a, b in ZZ$ (Definition von $M$) ist auch $3a + 2b in ZZ$

Fall $N in M$:

$M = {a/2 + b/3 | a, b in ZZ} = {(3a)/6 + (2b)/6 | a, b in ZZ} = {(3a + 2b)/6 | a, b in ZZ}$

${(3a + 2b)/6 | a in ZZ, b = -a} = {a/6 | a in ZZ, b = -a}$ ist Teilmenge von $M$

Da ${a/6 | a in ZZ} = {c/6 | c in ZZ}$ ist $N in M qed$

== b

Widerspruch durch Gegenbeispiel: $1/6 in N', 1/6 in.not M'$

// Zeige dass 1/6 nicht in M' ist

Sei $1/6 in M'$

Dann ist $1/6 = a/2 + b/3 => 3a + 2b = 6$

Diese Gleichung hat keine Lösung für $a, b in NN$, also ist $1/6 in.not M' qed$


