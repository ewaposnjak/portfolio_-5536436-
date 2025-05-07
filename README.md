# portfolio_5536436

Portfolio-App
Dies ist meine Portfolio-App, die ich mit Flutter erstellt habe. Sie zeigt ein bisschen was über mich, meine Projekte und was mich interessiert. Flutter und Dart sind die Technologien, mit denen ich die App gebaut habe, um eine ansprechende und einfache Benutzeroberfläche zu erstellen.

Flutter-Version
Für dieses Projekt habe ich Flutter in der Version 3.29.3 verwendet.

Wie man das Projekt startet
Was du brauchst:
Flutter installieren: Stell sicher, dass du Flutter auf deinem Computer installiert hast. Du findest die Installationsanleitung auf der Flutter-Webseite.

Abhängigkeiten installieren: Gehe in das Projektverzeichnis und öffne das Terminal (oder die Konsole). Führe dann den folgenden Befehl aus, um alle benötigten Abhängigkeiten zu installieren:

bash
Kopieren
Bearbeiten
flutter pub get
App starten: Sobald alles installiert ist, kannst du das Projekt auf deinem Emulator oder verbundenen Gerät starten. Benutze dazu:

bash
Kopieren
Bearbeiten
flutter run
Falls du ein spezielles Gerät verwenden möchtest, kannst du es so angeben:

bash
Kopieren
Bearbeiten
flutter run -d <Gerätename>
(Ersetze <Gerätename> mit dem Namen deines Geräts.)

Git-Branching-Strategie
In diesem Projekt arbeiten wir mit einer sogenannten Feature-Branch-Strategie:

Main-Master Branch: Der main oder master Branch ist immer die stabilste Version der App.

Feature-Branches: Wenn wir an neuen Features arbeiten, erstellen wir dafür eigene Branches, z.B. feature/startseite. Der Name des Branches ist so gewählt, dass klar wird, was wir gerade hinzufügen oder ändern.

Jede Änderung wird zuerst im Feature-Branch gemacht. Wenn das Feature fertig ist, kommt es über einen sogenannten Pull Request (PR) zurück in den main Branch, nachdem es getestet und überprüft wurde.

Merge in main: Der main Branch enthält immer die neueste stabile Version der App. Es ist wichtig, dass der main Branch jederzeit funktionsfähig ist.