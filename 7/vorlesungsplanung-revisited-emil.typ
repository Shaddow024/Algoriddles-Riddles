#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "7.1"
)

Du hatst n und Vorlesungen mit jewiels einer Start- und Endzeit
($s_i, e_i$). Wir möchten die Vorlesungen so $k$ Hörsälen zuweisen, dass $k$ so klein wie möglich ist. 

Wir betrachten dabei folgenden Greedy-Algorithmus um dieses Problem zu lösen.
Wir gehen dabei davon aus, dass die Hörsale bei 1 starten und die Start- und Endzeiten ebenfalls mit 1 Indizierung nutzen.

Algorithm 3: Vorlesungen in Hörsälen

Gehe  die Vorlesungen aufsteigend nach Startzeit durch. Weise die erste Vorlesung Hörsal 1 zu. Iteriere nun und weise die aktuelle Vorlesung immer dem aktuell freien Hörsaal mit der kleinsten Nummer zu.

Es ist leicht zu sehen, dass der der Algorithmus

+ Jedem Hörsaal zu einer Zeit stehts nur maximal eine Vorlesung zuweißt
+ Jeder Vorlesung nur genau einen Hörsaal zuweißt
+ das höchste vergebene $k$ entspricht der Anzahl an verwendeten Hörsälen

Es verbleibt also zu zeigen, dass maximal so viele Hörsäle mit Greedy belegt werden,
wie auch durch OTP benutzt werden.
Dazu zeigen wir die folgende Aussage durch vollständige induktion.

Nach $i <= n$ ist die Anzahl der verwendeten Hörsälen kleiner gleich der Anzahl an Hörsälen,  welche durch OPT genutzt werden.

*Beweis durch vollständige Induktion* 

Indutionsanfang; $i=0$: Offenbar wurden vor der ersten Vorlesung keine Hörsäle genutzt und weder Greedy noch OPT haben vor der ersten Vorlesung Hörsäle genutzt.

Induktionsschritt; $i -> i + 1$: Angenommen nach $i$ Vorlesungen gelten alle behaupteten Invarianten.

Wenn nach Vorlesung $i$, Greedy die nächste Vorlesung in einen bereits genutzten aber jetzt freien Hörsaal legt, dann kann auch OPT nur diese Vorlesung in einen bereits genutzten aber jetzt freien Hörsaal legen.
Betrachten wir nun den Fall, dass nach Vorlesung $i$ Greedy einen neuen Hörsaal nutzt, dann sind zu diesem Zeitpunkt alle Hörsäle belegt und somit muss auch OPT einen neuen Hörsaal nutzten.

