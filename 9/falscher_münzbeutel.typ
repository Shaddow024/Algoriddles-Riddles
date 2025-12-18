#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "9.2"
)

*Antwort*

Man nimmt alle 10 Beutel $B_1$ bis $B_10$. Nun nimmt man von dem ersten Beutel eine Münze, vom weiten Beutel zwei Münzen etc., und schließlich von $B_10$ 10 Münzen. Nun platziert man alle 55 Münzen aus den verschiedenen Beuteln auf der Digitalwaage. Das Gewicht dieser Münzen lässt einen nun eindeutig darauf schließen in welchem Beutel die gefälschten Münnzen sind, da das Gewicht um einen gewissen Betrag leichter als 55g ist. Diese Differenz multipliziert mit 10 ergibt dann den 1 indizierten index des Beutels mit den falschen Münzen.

+ Beispiel:
  - Gesamtgewicht = $54g$ 
  - Delta = $55g - 54g = 1$
  - Index des Beutels = $1 * 10 = 10$
  - Beutel mit falschen Münzen = $B_10$
  - Probe:
  $ (limits(sum)_(i=1)^9 i) + 10 * 0,9 = 1 + 2 + ... + 9 + 9 = 54 $

+ Beispiel:
  - Gesamtgewicht = $54,4g$ 
  - Delta = $55g - 54g = 0,6$
  - Index des Beutels = $0,6 * 10 = 6$
  - Beutel mit falschen Münzen = $B_6$
  - Probe:
  $ (limits(sum)_(i=1)^5 i) + 6 * 0,9 + (limits(sum)_(i=7)^10 i)= 1 + 2 + ... + 5 + 5,4 + 7+ 8 + 9 = 54,4 $
