#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "11.2"
)

Idee: Wir wollen am Ende des Schachbretts anfangen und von dort aus die Distanz zum Ende des Schachbretts erhöhen. Seien $d_1,d_2$ die beiden Distanzen zum Ende des Schachbretts. Wir schreiben also $(0,0)$, falls die beiden Bauern am Ende des Schachbretts stehen. 
Wir betrachten die verschiedenen möglichen Positionen auf dem Schachbrett und wollen festhalten, ob eine Position für den aktuellen Spieler gewinnbringend ist. Falls ja, erhält diese ein "W", ansonsten ein "L". Symmetrische Positionen werden hierbei ausgelassen (um es übersichtlich zu halten), da diese die gleiche Semantik besitzen, also sind beispielsweise die beiden Positionen $(1,2)$ und $(2,1)$ äquivalent. Dabei betrachten wir keine Positionen, für die folgendes gilt:
$|d_1 - d_2 > 2|$. Diese Positionen werden nämlich nicht erreicht, falls beide Spieler optimal spielen.
 

*Start* Das Tupel (0,0) ist die Verliererposition für den aktuellen Spieler.

*Rekursion* Wir erhöhen abwechselnd $d_1$ und $d_2$ und betrachten, ob wir mit einem gültigen Zug auf einer "L" Position landen können. Falls ja, erhält diese Position ein "W", andernfalls ein "L". Damit können wir für die verschiedenen Distanzen folgende Tabelle ausfüllen:

Damit es übersichtlich bleibt, hier eine Tabelle für $n=3$:
#align(center, table(
  rows: 4,
  columns: 4,
  align: center,
  gutter: 5pt,
  stroke: none,
  [],[0],[1],[2],
  [0],[L],[W],[W],
  [1],[W],[L],[W],
  [2],[W],[W],[L]
))
Nun können wir diese Tabelle bis $n=5$ erweitern:

#align(center, table(
  rows: 6,
  columns: 6,
  align: center,
  gutter: 5pt,
  stroke: none,
  [],[0],[1],[2],[3],[4],
  [0],[L],[W],[W],[],[],
  [1],[W],[L],[W],[W],[],
  [2],[W],[W],[L],[W],[W],
  [3],[],[W],[W],[L],[W],
  [4],[],[],[W],[W],[L],
))
Hier erkennt man relativ schnell ein Muster: Wenn beide Spielfiguren die gleiche Distanz zum Ende haben, so verliert der aktuelle Spieler. Da Weiß zu Beginn für beide  Spielfiguren die gleiche Distanz zum Ziel hat, verliert Weiß für alle $n$.