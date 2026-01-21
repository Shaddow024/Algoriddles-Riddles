#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)

#show: project.with(
  title: "12.3"
)

Zu Beginn haben wir $n$ Pokémons zu sortieren. In jedem Schritt $i$ werden $i/3$ der Pokémon sortiert. Damit verbleiben $2$ verbleibende zu sortierende Teilprobleme. Also ergibt sich die Rekursionsgleichung:
$ T(n) = 2T(n/3) $
Wir nehmen hier an, dass $T(1) in Theta(1)$.


Jetzt wollen wir den Rekursionsbaum anhand der Informationen aufmalen:
#align(center, image("AlgoRiddler Rekursionsbaum.drawio.png"))
$ "Anzahl Blätter: " 2^(log_3(n)) = n^(log_3 (2)) $
Wenn wir die Gesamtkosten berechnen wollen, dann müssen wir über alle Ebenen die Kosten pro Ebene summieren. Schließlich addieren wir die Kosten für alle Blätter. Das ergibt folgende Gleichung:

$ (sum^(log_3(n-1))_(i=0) (2/3)^i dot n) + T(0) dot n^(log_3(2)) $

Mit $T(1) = Theta(1)$ erhalten wir 
$ (sum^(log_3(n-1))_(i=0) (2/3)^i dot n) + o(n) $
Jetzt ziehen wir $n$ aus der Summe:
$ n dot (sum^(log_3(n-1))_(i=0) (2/3)^i) + o(n) $
Diesen Term können wir abschätzen:
$ n dot (sum^(log_3(n-1))_(i=0) (2/3)^i) + o(n) < n dot (sum^(infinity)_(i=0) (2/3)^i) + o(n) $
Jetzt haben wir die geometrische Reihe, welche wir (wie gegeben) abschätzen können:
$ n dot (sum^(infinity)_(i=0) (2/3)^i) + o(n) < n dot (1/(1- 2/3)) + o(n) $
Damit erhalten wir:
$ n dot 3 + o(n) $
Also gilt insgesamt, dass $T(n) in O(n)$.