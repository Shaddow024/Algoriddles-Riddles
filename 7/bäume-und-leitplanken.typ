#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "7.2"
)


=== Idee 1
Idee 1 ist korrekt. //Beweis per Induktion mit "Greedy Stays Ahead".

Der Algorithmus funktioniert, da er durch eine linksweiteste Abdeckung immer garantiert, dass jeder Baum abgedeckt ist. Betrachte dazu den ersten ungeschützten Baum $b_i$. Ist die Lösung korrekt, so gibt es ein Intervall $[x, x + cal(l)]$, für welches folgendes gilt:
$ x <= b_i <= x + cal(l) $
Also darf die Leitplanke nicht rechts vom Baum beginnen, da dieser sonst nicht abgedeckt wird.

Würden wir weiter rechts starten, dann können wir nur weniger oder gleich viele Bäume abdecken. 
\ Daher ist diese Lösung eine korrekte.

=== Idee 2
Idee 2 ist nicht korrekt.
Wähle $cal(l)=4$ und Baumpositionen $4,7,8,9,11$. Dann würden wir mit dieser Idee die drei mittleren Bäume als erstes auswählen. Setzen wir dazu diese Leitplanke oBdA auf das Intervall $[7,10]$. Um die beiden anderen Bäume noch abzudecken, müssten wir also noch Position $4$ und $11$ abdecken mit zwei weiteren Leitplanken, beispielsweise durch $[3,6]$ und $[11,14]$. Jedoch gibt es eine bessere Lösung mit zwei Leitplanken, nämlich $[4,7]$ und $[8,11]$. Also ist der Algorithmus nicht korrekt.


