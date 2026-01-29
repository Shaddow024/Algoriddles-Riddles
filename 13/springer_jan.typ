#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "13.1"
)

Idee: Da wir in diesem Spiel limitiert sind durch unsere Auswahl von Zügen (niemals zwei nach oben oder links), werden wir uns mit jedem Schritt weiter nach unten rechts bewegen. Wir wählen die Summe der Koordinaten als Potentialfunktion:

$ Phi(x,y) = x+y $

Betrachtet man nun alle legalen Spielzüge (ohne Doppelungen) und deren Auswirkung auf die Potentialfunktion, so ergibt sich folgendes:
+ $Delta x = 2, Delta y = 1 -> Delta Phi = 3$
+ $Delta x = 2, Delta y = -1 -> Delta Phi = 1$
+ $Delta x = 1, Delta y = 2 -> Delta Phi = 3$
+ $Delta x = -1, Delta y = 2 -> Delta Phi = 1$

Daraus ergibt sich, dass die Potentialfunktion strikt wächst und das Spiel somit in endlichen vielen Schritten endet.