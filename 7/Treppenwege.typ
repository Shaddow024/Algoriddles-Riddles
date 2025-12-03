#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "7.3"
)

Du hast eine Treppe mit $n$ Stufen, und du kannst immer 1 oder 2 Stufen hoch gehen.

Wie viele Wege gibt es nach oben?

Lösung:

Wenn $n = 1$, dann gibt es genau einen Weg: (1)\
Bei $n = 2$ gibt es genau zwei Wege:(1,1),(2)\
Bei $n = 0$ wiederum gibt es keinen Weg, da man keine Schritte gehen muss um nach oben zu kommen.

Bei $n > 2$ fokussiert man sich auf den letzten Schritt. Dieser war entweder ein Doppelschritt von $n-2$ oder ein normaler Schritt von $n-1$ aus. Somit ergibt sich die Anzahl der Wege zu $n$ aus der Summe der Wege bis $n-1$ und $n-2$. Dies kann man dann also als rekursive Funktion $W(n)$ aufschreiben, wobei diese die oben genannten Stopfälle für $n=1$, $n=2$ und $n=0$ hat.

Dies entspricht auch der Fiboncci-Folge, nur dass die Werte für die Wege dem Wert der Fibonacci-Folge bei (n+1) entsprechen.
