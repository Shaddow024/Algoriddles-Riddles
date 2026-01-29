#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "13.2"
)

Idee: Mit jedem Zug, den der Bauer tätigt, wird unfreiwillig die Distanz zum Hahn geringer. Dabei ist die Distanz im Zug des Bauern jeweils gerade, und im Zug des Hahns ungerade.

Sei $(x_B,y_B)$ die Position des Bauern und $(x_H,y_H)$ die Position des Hahns. Dann können wir die Potentialfunktion mit der Manhattan-Distanz zwischen den beiden aufstellen:

$ Phi = |x_B-x_H| + |y_B-y_H| $

In jedem Schritt können sowohl Hahn als auch Bauer ihre Distanz genau um $1$ ändern. Also ändert jeder Zug die Parität. Damit der Bauer das Huhn fangen kann, muss er also $Phi = 0$ erreichen. Durch die Parität ist dies gegeben. \
Der Hahn möchte in jedem Zug möglichst dem Bauern entfliehen und einen Zug machen, der die Distanz verringert. Der Bauer verfolgt die umgekehrte Strategie. Da das Spielfeld aber begrenzt ist, muss das Huhn in den Ecken (also auch in der Startposition) Züge machen, die die Distanz verringern. Also nimmt die Potentialfunktion strikt ab und der Bauer fängt das Huhn.