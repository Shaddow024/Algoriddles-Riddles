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

Da es $3n$ Zellen mit je $n$ Markern jeder Farbe gibt, können die Marker einer Sorte maximal eine ganze Zeile füllen oder sich auf die Zeilen verteilen.

