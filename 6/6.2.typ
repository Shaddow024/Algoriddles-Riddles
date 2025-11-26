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

Da es $3n$ Zellen mit je $n$ Markern jeder Farbe gibt, können die Marker einer Sorte maximal eine ganze Zeile füllen oder sich auf die Zeilen verteilen. Somit gibt es stets zwei weitere Zeile, welche mit den Marken der anderen beiden Farben befüllt sind.

Man started also mit einem Marker einer belibiegen Farbe und sucht dann in den anderen beiden Zeilen nach je einem Marker der anderen Farben. Da es insgesamt $n$ Marker pro Farbe gibt und ein Zeile nur n Zellen hat, muss es diese geben. Nun bewegt man diese, so dass man eine Spalte mit allen drei Farben erhält. Diese Spalte kann man von nun an ignorieren und somit kann man von hier aus mit n:=n-1 weiterarbeiten.

Somit schaft man es immer, dass jede Spalte alle drei Farben enthält.

