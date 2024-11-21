#import "@preview/unequivocal-ams:0.1.1": ams-article, theorem, proof

#show: ams-article.with(
  title: [GBI WS 24/25 – Übungsblatt 3],
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

zz: Für alle $n in NN_0$ mit $n >= n_0$ gilt $n+4 < n²$

$n_0 = 3$

Induktionsanfang: $n = 3$:

$3 + 4 = 7 < 9 = 3²$

Induktionsvoraussetzung: $n >= 3$ und $n+4 < n²$

Induktionsschritt: $n+1$

$(n+1) + 4 = n + 5 < (n+1)²$

$<=> (n+1) + 4 = n + 5 < n² + 2n + 1$

$<=> n + 4 < n² + 2n + 2$

Da $n+4 < n²$, gilt auch $n+4 < n² + 2n + 2$ $qed$.

== b

$f: NN_+ -> NN_0, f(1) = 0, f(n) = f(floor(n/2))+1$

zz: $forall n in NN_+: f(n) <= log_2(n)$

Induktionsanfang: $n = 1$

$f(1) = 0 <= log_2(1) = 0$

Induktionsvorraussetzung: $forall (n-1) > 1: f(n-1) <= log_2(n-1)$

Induktionsschritt: $f(n) <= log_2(n)$

Durch Induktionsvoraussetzung:

$f(floor(n/2)) <= log_2(floor(n/2))$

$=> f(n) = f(floor(n/2)) + 1 <= log_2(floor(n/2)) + 1$

$=> f(n) <= log_2(floor(n/2)) + 1 <= log_2(n/2) + 1$

$=> f(n) <= log_2(n) - 1 + 1$

$=> f(n) <= log_2(n)$ $qed$


= Aufgabe 2

== a

$f("abcac") = "aaaacc"$

== b

Beweis. Wir beweisen die folgende Aussage: $|f(w)| = |w| + |w|_a - |w|_b$

Dazu machen wir eine vollständige Induktion über die Längen der Worte: $n in NN_0: w in A^*, |w| = n$

Induktionsanfang: Für $n = 0$

$|f(epsilon)| = 0 = |epsilon| + |epsilon|_a - |epsilon|_b$

Induktionsschritt: Sei $n>0$ beliebig. Wir zeigen, dass $forall w in A^*, |w| = n: |f(w)| = |w| + |w|_a - |w|_b$ und verwenden dabei die Induktionsvoraussetzung, nähmlich $forall w in A^*, |w| = n-1: |f(w)| = |w| + |w|_a - |w|_b$. Sei $w in A^n$ beliebig.

Fall 1: $w = a w'$ für ein $w' in A^*$:

$|f(w')| = |w'| + |w'|_a - |w'|_b$

$f(w) = "aa" dot f(w') = |f(w')| + 2 = |w'| + |w'|_a + 2 - |w'|_b$

$|w| = |w'| + 1$

$w$ ist bis auf die a's am Anfang bzw. Ende mit $w'$ identisch.

$=> f(w) = |w'| + |w'|_a + 2 - |w'|_b
\ = |w| - 1 + |w'|_a + 2 - |w|_b
\ = |w| - 1 + |w|_a - 1 + 2 - |w|_b
\ = |w| + |w|_a - |w|_b qed$

Fall 2: $w = b w'$ für ein $w' in A^*$:

$f(w) = f(w')$

$|w| = |w'| + 1$

$|w|_b = |w'| + 1$

$=> f(w) = |w'| + |w'|_a - |w'|_b
\ = |w| - 1 + |w'|_a - |w'|_b
\ = |w| - 1 + |w|_a - |w|_b + 1
\ = |w| + |w|_a - |w|_b qed$

Fall 3: $w = c w'$ für ein $w' in A^*$:

$f(w) = f(w') dot c$

$|w| = |w'| + 1$

$|w|_c = |w'| + 1$

$=> f(w) = |f(w')| + 1$

$=> f(w) = |w'| + |w'|_a - |w'|_b + 1
\ = |w| - 1 + |w'|_a - |w'|_b + 1
\ = |w| + |w|_a - |w|_b qed$

= Aufgabe 3

== a

$f("abcac") = "abcacbcbcacba"$

== b

zz: $forall w in A^*: |f(w)| <= 3 dot 2^((|w|) / 2) - 3$

Induktionsanfang 1: $|w| = 0$

$f(epsilon) = epsilon$

$|f(epsilon)| = 0 <= 3 dot 2^(0 / 2) - 3 = 3 - 3 = 0$

Induktionsanfang 2: $|w| = 1$

$f(w) = w$

$|f(w)| = 1 <= 3 dot 2^(1 / 2) - 3 approx 1,24$

Induktionsvoraussetzung: $n > 1: forall w in A^*: |w| = n - 1: |f(w)| <= 3 dot 2^((n - 1) / 2) - 3$

Induktionsschritt: $|w| = n$

$w = x w' y$ mit $x,y in A, w' in A^*$

$f(w) = x dot f(w') dot y dot f(w') dot x$

$|f(w)| = 1 + |f(w')| + 1 + |f(w')| + 1 = 3 + 2 * |f(w')|$

$|w'| = |w| - 2$

$|f(w')| = 3 dot 2^((|w| - 2) / 2) - 3$

$=> |f(w)| = 3 + 2 * (3 dot 2^((|w| - 2) / 2) - 3)
\ = 6 dot 2^((|w| - 2) / 2) - 3
\ = 3 dot 2^((|w| - 2) / 2 + 1) - 3
\ = 3 dot 2^((|w|) / 2) - 3 qed$

== c

zz: $f(w)$ ist ein Palindrom

Induktionsanfang 1: $|w| = 0$

$f(epsilon) = epsilon$

Das leere Wort ist ein Palindrom.

Induktionsanfang 2: $|w| = 1$

$f(w) = w$

Ein Zeichen ist ein Palindrom.

Induktionsvoraussetzung: $n > 2: forall w in A^*: |w| = n - 2: f(w)$ ist ein Palindrom

zz: $forall w in A^*: |w| = n: f(w)$ ist ein Palindrom

$w = x w' y$ mit $x,y in A, w' in A^*$

$|w'| = n - 2$

$f(w')$ ist ein Palindrom (Induktionsvoraussetzung)

$f(w) = x dot f(w') dot y dot f(w') dot x$

$x, y$ sind ebenfalls Palindrome.

Rückwärts gelesen: $x dot f(w') dot y dot f(w') dot x = f(w) qed$

= Aufgabe 4

== a

Hilfsfunktion $f: Sigma -> A^*$:

$f(a) = cases(
  a = epsilon or a in.not A: epsilon,
  a in A: a,
)$

$l(w) = cases(
  w = epsilon: epsilon,
  "ansonsten": w = w' dot a: l(w') dot f(a),
)$

== b

zz: $f(w) in B^*$

Induktionsanfang: $|w| = 0$

$epsilon$ enthält keinen Punkt.

$=> f(w) = w$

Induktionsvoraussetzung: $n > 0: forall w in B^*: |w| = n - 1: f(w) in B^*$

Induktionsschritt: $|w| = n$

Fall 1: $w$ enthält keinen Punkt

$f(w) = w$

Damit ist $f(w)$ in $B^* qed$.

Fall 2: $w$ enthält mindestens einen Punkt

Da sowohl $w_1$ als auch $w_2$ kürzer als $w$ sind, sind sie nach Induktionsvoraussetzung in $B^*$.

Damit ist auch $f(w_2)$ in $B^*$.

Da kein Punkt in $(w_1) f(w_2)$ hinzugefügt wird, ist auch $f(w)$ in $B^* qed$.

== c

zz: $|f(w)| = |w| - |w|_.$

Induktionsanfang: $|w| = 0$

$|f(epsilon)| = |epsilon| = 0 = 0 - 0$

Induktionsvoraussetzung: $n > 0: forall w in B^*: |w| = n - 1: |f(w)| = |w| - |w|_.$

Induktionsschritt: $|w| = n$

Fall 1: $w$ enthält keinen Punkt

$f(w) = w$

Da $w$ keinen Punkt enthält, ist $|w|_.$ = 0.

$|f(w)| = |w| = |w| - 0 qed$.

Fall 2: $w$ enthält mindestens einen Punkt


$|f(w)| = |w_1 f(w_2)|$

$= |w_1| + |f(w_2)|$

$|f(w_2)| = |w_2| - |w_2|_.$ (Induktionsvoraussetzung)

Da $w_1$ keinen Punkt enthält, ist $|w_2|_. + 1 = |w|_.$

$|f(w)| = |w_1| + |w_2| - |w_2|_. + 1 = |w_1| + |w_2| - |w|_. + 1$

$|w| = |w_1| + 1 + |w_2|$

$|f(w)| = |w| - |w|_. qed$.
== d

Das Problem liegt darin, dass die Behauptung für *ein* Wort der Länge $2n+1$ gezeigt wird, nicht für jedes, wie es eigentlich notwendig wäre. Damit gilt auch die Induktionsvoraussetzung (die außerdem nicht angegeben wurde) nicht und die gesamte Induktion bricht zusammen.

Gegenbeispiel:

$w="()(())."$

$z="()(())"$

$z(2)=")"$

$z(6+1-2)=")" = z(2)$