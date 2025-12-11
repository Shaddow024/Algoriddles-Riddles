#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "8.3"
)

*Antwort*

Die Piraten platzieren einen Piraten auf dem Flussabschnitt von G, einen auf dem von A und D, und dann noch je einen entweder auf den Flussabschnitten (E,F) und (B,C) oder je bei (B,F) und (C,E).


*Begründung*

Das Flussgebiet modeliert man als Graphen, bei dem die Häfen und Kreuzungen jeweils Knoten sind und die Flussabschnitte die Kanten zwischen diesen.
Man kann lediglich auf einer Kante einen Piraten platzieren, welcher dann alle Handelsrouten, welche durch diese Kante verlaufen, abdeckt.

Als Datenreduktionsregel nutzt man folgende Regeln:
_Regel 1_\
Bei einer Kante über welche keine Handelroute verläuft ignoriert man und betrachtet stattdessen die beiden verbundenen Untergraphen als eigene Graphen. Diese Regel ist korrekt, da diese Kante per Definition nicht über Handelsrouten verfügt, somit geht nichts verloren wenn man diese Kante entfernt. Fall eine optimale Lösung dort einen Piraten platziert, kann dieser weggelassen werden, da dieser ja keine Handelsroute abdeckt.\
Diese Regel wende ich an um den Graphen in zwei Graphen, bestehend aus einmal dem Graphen mit den beiden Knoten von G und den Kanten welche diese verbinden und all denn anderen Knoten mit ihren verbindenden Kanten.

_Regel 2_\
Falls es eine Kante $k$ zwischen zwei zusammengehörenden Häfen gibt, welche alle Handelrouten, welche die anderen Kanten abdecken, abdeckt, und noch mehr, dann wähle diese. Da man in jedem Fall eine Kante zwischen zwei zusammenhängenden Häfen wählen muss, muss auch eine dieser Kannten in der optimalen Lösung sein. Diese Regel ist korrekt, da falls eine andere Kante in der optimalen Lösung gewählt wird, kann ich diese gegen die Kannte $k$ austauschen um die gleichen Handelrouten abzudecken. \
Diese Regel wende ich an um die Kante zu wählen, welche sowohl die Handelrouten von A als auch D abdeckt.

_Regel 3_\
Falls alle Kanten zwischen zwei zusammengehörenden Häfen die gleichen Handelrouten abdecken, so ist die wähle eine beliebige Kannte $k$ dieser Kanten. Diese Lösung ist korrekt, da falls eine optimale Lösung eine andere Kante $l$ wählt, dann kann ich diese gegen $k$ austauschen und die gleichen Handelrouten sind abgedekt.\
Diese Regel wende ich an um eine Kante abzudecken, welche die Handelsroute von G abdeckt.

_Regel 4_\
Falls es der Graph aus 4 Hafenpaaren besteht, welche von Kanten so verbunden sind, das es 4 Kanten gibt welche je zwei unterschiedliche Handelsrouten abdecken, so wähle eine $k$ beliebige dieser 4. Danach nutzt man Regel 2 um die jeweils andere Kante $l$ dieser 4 Kanten zu wählen, so das alle Handelrouten abgedeckt sind. Die Regel ist gültig, da falls eine optimale Lösung die zwei anderen dieser 4 Kanten wählt, dann wählt man $k$ so wie eine dieser beiden optimalen Kanten und aus Regel 2 ergibt sich dann, dass Kante $l$ der anderen optimalen Kante entspricht.
Diese Regel wende ich an, um zwei Kanten, entweder die zwischen B und C und die zwischen E und F, oder die zwischen B und F und C und E.


Damit sind alle Handelrouten mit 4 Piraten abgdeckt.
