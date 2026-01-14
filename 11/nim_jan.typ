#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "11.1"
)

Um zu bestimmen, ob der Startspieler gewinnt, müssen wir rekursiv bestimmen, ob ein Zug gewinnbringend ist oder nicht. Dazu füllen wir die folgende 1-dimensionale Tabelle aus, die für eine gegebene Anzahl Streichhölzer bestimmt, ob der Spieler, der aktuell an der Reihe ist, mit diesem Zug gewinnen kann oder verlieren wird.

*Start* Bei 0 oder 1 verbleibenden Streichhölzern verliert logischerweise der aktuelle Spieler.

*Rekursion* Wir füllen die Tabelle von links nach rechts. In jeder Zelle schauen wir, ob wir durch das Wegnehmen von zwei oder drei Streichhölzern, oder durch das Halbieren bei einer geraden Anzahl Streichhölzer zu einem L kommen können. Falls ja, schreiben wir in diese Zelle ein W, da das entsprechende Wegnehmen meinen Mitspieler zum Verlieren zwingen wird. Falls nein, schreiben wir in die Zelle ein L, da, egal, welche Aktion wir machen, mein Mitspieler danach gewinnen kann.

Daraus ergibt sich folgende Tabelle.

#table(
  columns: 22,
  //gutter: 3pt,
  //stroke: none,
  align: center,
  [0],[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],
  [L],[L],[W],[W],[W],[L],[L],[W],[W],[W],[W],[L],[W],[W],[W],[L],[L],[W],[W],[W],[L],[L]
)

Da an Stelle 22 ein "L" steht, muss also der Startspieler verlieren.