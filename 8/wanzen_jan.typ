#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "8.1"
)

*Lösung*: $i,f,d,h,b$

*Begründung*:
Als Datenreduktionsregel nehme ich folgende Regel:

Wir suchen ein Viereck innerhalb des Graphen (vier Knoten mit vier Kanten). Da wir alle Kanten abdecken wollen, müssen wir also zwei gegenüberliegende Knoten auswählen. Befindet sich eine weitere Kante in diesem Viereck, welche zwei gegenüberliegende Knoten verbindet, so müssen diese automatisch ausgewählt werden, um alle Kanten abzudecken. 

Zu Beginn suchen wir uns also so ein spezielles Viereck (mit Querbalken) und markieren die beiden gegenüberliegenden Knoten $u,v$ als "verwanzt". Dann suchen wir ein neues Viereck, welches entweder $u$ oder $v$ enthält. Dann verwanzen wir erneut den gegenüberliegenden Knoten. Falls wir erneut auf ein spezielles Viereck treffen, so verwanzen wir automatisch die gegenüberliegenden Knoten.

Die Regel ist korrekt, da wir mit den Vierecken garantieren nur Knoten auszuwählen, welche später zwangsweise in der Lösung auftauchen müssen.