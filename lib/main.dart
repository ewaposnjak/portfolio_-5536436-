import 'package:flutter/material.dart';
import 'startseite.dart'; // Import der Startseite

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Willkommen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Startseite(), // Zeigt die Startseite an
    );
  }
}

