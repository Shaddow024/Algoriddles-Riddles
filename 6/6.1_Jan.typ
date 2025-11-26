#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "6.1"
)

Sei $n$ die Anzahl der Linien.

Wir starten mit einem leeren Blatt. Zeichnen wir die erste Linie ein, so ergeben sich zwei Zonen (wobei wir keine andere Linie durchkreuzen [wichtig für später]). Diese können wir in rot und blau anmalen, wodurch wir für $n=1$ alle Zonen einfärben konnten. Fügen wir eine weitere Linie hinzu, so können wir entweder die erste Linie kreuzen (wodurch zwei neue Zonen entstehen) oder die erste nicht kreuzen, wodurch wir _eine_ weitere Zone erhalten. Auch diese Kombination können wir im Schachbrett-Muster in rot und blau einfärben, ohne gleiche Farben bei Nachbarn zu erhalten. Also gilt die Aussage auch für $n=2$.

Schauen wir uns das Problem für beliebige $n$ an. Sei dazu $c$ die Anzahl an Kreuzungen bzw. bereits existierenden Ecken, die durch andere Linien entstanden sind. Sei $k$ die Anzahl der getroffenen *Linien* beim Einzeichnen einer neuen. Dann ist die Anzahl der neuen Zonen $z = k + 1 - c$. Wir wollen zeigen, dass ein Algorithmus existiert, um die Zonen abwechselnd im Schachbrett-Muster zu färben.

Wir betrachten jedes Feld als Knoten in einem Graph und jedes Angrenzende Feld als Nachbarn. Wir verwenden eine Breitensuche, um über alle Elemente des Graphen zu iterieren. Färbe dabei den Startknoten rot. Färbe dabei abwechselnd alle nicht besuchten Nachbarn rot bzw. blau, bis wir den Graphen abgearbeitet haben.

Wenden wir den Algorithmus auf $n=2$ an, so erhalten wir ein korrektes Ergebnis. Das funktioniert jedoch nur, da die Geraden durchgehend sind, sonst erhalten wir nicht korrekte Ergebnisse. (An der Stelle möchte ich mir einen Korrektheitsbeweis für alle $n$ sparen ;)