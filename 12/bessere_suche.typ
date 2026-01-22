
#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "12.2"
)

Um das Problem zu formalisieren, muss man unterscheiden zwischen den abgefragten Elementen nach $i$ Schritten oder den noch möglichen Elementen nach $i$ Schritten. Da es in der Aufgabe um die Anzahl der abgefragten Elemente geht werde ich mich lediglich mit diesen befassen.

Für diese Suche lässt sich die Suche wie folgt in einer Rekursionsformel formalisieren:

$ T(0) = n/2 \
T (i +1) = T(i) / 2 * 1/2 $

Hierbei  entspricht $n$ der Anzahl an Elementen.

Die Anzahl der überprüften Elemente ist also wie folgt:

$ limits(sum)_(i=0)^(floor.l log_4(n) floor.r) n / 4^i * 1/2 $

