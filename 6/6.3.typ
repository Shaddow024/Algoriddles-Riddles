#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "6.3"
)

Sei $n$ die Anzahl Piraten. Hier sei der ranghöchste Pirat derjenige, mit der größten Nummer (das macht es lesbarer).

Ein einziger Pirat kann sich trivialerweise selbst den gesamten Schatz geben, da ihm niemand widersprechen kann. Das gleiche gilt für 2 Piraten, da bei Gleichstand der Anführer überlebt.

Sei nun $n=3$. Dann muss der ranghöchste Pirat der Nummer eins (wie folgt) eine Münze geben, um für ihn zu stimmen, da er sonst gar nichts bekommt, wenn der Anführer stirbt. Also sieht die Verteilung für $n=3$ wie folgt aus:
#table(
  gutter: 3pt,
  columns: (auto,auto,auto),
  stroke: none,
  align: center,
  [3],[2],[1],
  [9999],[0],[1]
)
Fügen wir jetzt einen weiteren Piraten hinzu, so kommen wir in ein ähnliches Szenario: Nummer 4 muss Nummer 2 bestechen, da Nummer 2 sonst für $n=3$ nichts erhält und nur so überzeugt werden kann, nicht den Kapitän von Bord zu werfen. Also sieht die Verteilung für $n=4$ wie folgt aus:

#table(
  gutter: 3pt,
  columns: (auto,auto,auto,auto),
  stroke: none,
  align: center,
  [4],[3],[2],[1],
  [9999],[0],[1],[0]
  )
Wenn wir einen weiteren Piraten hinzufügen muss der Kapitän (aus den gleichen Gründen) zwei Piraten bestechen:

#table(
  gutter: 3pt,
  columns: (auto,auto,auto,auto,auto),
  stroke: none,
  align: center,
  [5],[4],[3],[2],[1],
  [9998],[0],[1],[0],[1]
  )
Damit erhöht sich die Anzahl von "Bestechungsgold" $B$ alle zwei Schritte um eins. Außerdem gilt, dass falls der ranghöchste Pirat eine ungerade Nummer besitzt, dass alle Piraten mit ungerader Nummer bestochen werden (außer er selbst, für $n>2$).

Sei die Anzahl der Piraten nun $1000$. Wir brauchen ab $n=3$ Bestechungsgold und erhöhen alle zwei Schritte das Bestechungsgold um eins. Also werden $1000/2 -2$ Bestechungsgold abgegeben. Damit erhält der Kapitän einen Rest von $9502$ und wir erhalten folgende Verteilung:

#table(
  gutter: 3pt,
  columns: (auto,auto,auto,auto,auto,auto),
  stroke: none,
  align: center,
  [1000],[999],[998],[$dots$],[2],[1],
  [9502],[0],[1],[$dots$],[1],[0]
)