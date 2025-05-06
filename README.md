# portfolio_5536436

Portfolio-App
Projektbeschreibung
Dies ist eine Flutter-App, die als Portfolio dient. Sie zeigt Informationen über die Entwicklerin, ihre Projekte und Interessen. Das Projekt verwendet Flutter und Dart, um eine ansprechende, mobile Benutzeroberfläche zu erstellen.

Flutter-Version
Dieses Projekt wurde mit Flutter 3.29.3 entwickelt. Stelle sicher, dass du diese Version oder eine kompatible Version von Flutter verwendest.

Wie man das Projekt startet
Voraussetzungen
Flutter: Stelle sicher, dass du Flutter auf deinem System installiert hast. Du kannst die Installation von Flutter unter flutter.dev nachlesen.

Abhängigkeiten installieren: Öffne das Terminal in deinem Projektverzeichnis und führe folgenden Befehl aus, um alle Abhängigkeiten zu installieren:

bash
Kopieren
Bearbeiten
flutter pub get
App starten: Um das Projekt auf deinem Emulator oder verbundenen Gerät zu starten, führe den folgenden Befehl aus:

bash
Kopieren
Bearbeiten
flutter run
Wenn du das Projekt auf einem spezifischen Gerät starten möchtest, verwende:

bash
Kopieren
Bearbeiten
flutter run -d <device_name>
(Ersetze <device_name> durch den Namen deines Geräts)

Git-Branching-Strategie
In diesem Projekt verwenden wir eine Feature-Branch-Strategie:

Main-Master Branch:

Der main oder master-Branch enthält die stabilste Version der Anwendung.

Alle Änderungen werden über Pull-Requests (PR) vom Feature-Branch in den main-Branch gemerged.

Feature Branches:

Jede neue Funktion oder jedes neue Feature wird in einem eigenen Branch entwickelt, z.B. feature/startseite.

Der Name des Feature-Branches folgt dem Format feature/<feature-name>.

Entwicklung:

Alle Änderungen werden im jeweiligen Feature-Branch vorgenommen.

Wenn das Feature fertig ist, wird ein Pull Request (PR) erstellt, um den Feature-Branch in main zu mergen.

Merge in den main-Branch:

Nach Review und Tests wird der Feature-Branch in den main-Branch gemerged.

Der main-Branch sollte jederzeit eine lauffähige und getestete Version der App enthalten.

Diese README-Struktur gibt eine klare Übersicht über das Projekt, wie man es startet und welche Git-Strategie angewendet wird. Es ist eine einfache, aber effektive Art und Weise, das Projekt für andere Entwickler zugänglich zu machen und zu erklären.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
