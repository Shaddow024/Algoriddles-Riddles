#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "13.3"
)


Wir definieren das Potential für jeden Studi als  die Position in der jeweiligen Schlange. 

Wir formalisiern dafür $n_x$ als die Anzahl der Studis in der x-ten Schlange.

Als Potentialfuntion ergibt sich dann $f = sum_(i = 1)^(k) sum_(j = 1)^(n_i) j$

Die Bedingung für einen Wechsel ist, dass die die neue Position weiter vorne wäre, als die aktuelle Position. Dabei veringert sich das Potential um mindestens 1, da falls es sich nicht verringern würde, wäre der Wechsel nicht erlaubt.
Da das Potential aber größer gleich Null sein muss und das Potential bei jedem Wechsel um 1 sinkt, hör dies irgendwan auf.


