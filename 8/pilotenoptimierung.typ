#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "8.2"
)

*Antwort*: $p_2 $ und $p_3$.

*Begründung*:

Als Datenreduktionsregel nehme ich folgende Regel:
Wähle ein Flugzeug aus $f_1, dots, f_6$, welches nur zwei ausgehende Kanten besitzt. Seien $p_x, p_y$ die dazugehörigen Piloten. Ist $p_x$ strikt besser als $p_y$, so wähle diesen Piloten aus und entferne alle verbundenen Flugzeuge. Ist $p_y$ strikt besser, so wähle diesen Piloten und entferne alle verbundenen Flugzeuge. Die Regel ist korrekt, da wir immer einen der beiden Piloten auswählen müssen, damit das dazugehörige Flugzeug geflogen werden kann. Dadurch, das wir strikt bessere Piloten wählen, erhalten wir die optimale Lösung.