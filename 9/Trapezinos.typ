#import "../template.typ": *
#set page(
  header: grid(
    align: center,
    columns:(auto, 1fr, auto),
    [Jan Mörkens, Emil Seehofer],[],[AlgoRiddles]  
  )
)
#show: project.with(
  title: "9.3"
)

*Antwort*

Aus den Trapezinos lässt sich,  wie im Bild zu sehen ist, ein Dreieck mit einer Seitenlänge 3 bauen. Somit muss man nun lediglich aus diesen Dreiecken ein Dreick bauen, welches n mal größer ist.
Dies ist trivial und wird somit hier nicht weiter erläutert.
\
\
\
#figure(
  image("Trapezinos_zusammensetzung.jpeg", width: 300pt)
)
