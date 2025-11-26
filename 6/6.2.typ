#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "6.2"
)

Sei $n=1$. Dann haben wir eine Spalte, in welcher sich alle Marker befinden. Diese Kombination funktioniert trivialerweise.

Sei $n=2$. Dann gibt es folgende Möglichkeiten, wie sich die Marker verteilen können (wobei r=rot, b=blau, w=weiß):

#table(
  gutter: 5pt,
  columns: (auto,auto),
  [w],[w],
  [b],[b],
  [r],[r]
)

