#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "13.1"
)

Zu Beginn haben wir $n$ spielende Menschen. In jeder Runde halbiert sich die Anzahl an Menschen, außer wir haben eine ungerade Anzahl Spieler, dann bleibt einer zusätzlich übrig.

Also ergibt sich die folgende Rekursionsgleichung:
$ T(0) = n #h(10pt) ("Anfangsbestand") $
$ T(i+1) = ceil(T(i)/2) #h(10pt) ("Bestand nach dem "i+1"-ten Schritt") $

Die Anzahl der benötigten Runden ist das kleinste $k$, für das folgendes gilt:
$ ceil(n/2^k) = 1 $
Das ist äquivalent zu:
$ 2^k >= n $
Mit Logarithmus umformen:
$ k = ceil(log_2 n) $

Die Anzahl der Runden bis zum Weltmeister sind also $ceil(log_2 n)$.