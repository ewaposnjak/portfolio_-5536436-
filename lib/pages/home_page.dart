import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE4EC), // Helles Rosa
      appBar: AppBar(
        title: const Text(
          'Willkommen!',
          style: TextStyle(color: Color(0xFFFF1493)), // Hot Pink
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFE4EC), // Gleiche Farbe wie Hintergrund
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFFFF1493)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 20),
            Text(
              'Hallo und herzlich willkommen!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF1493), // Hot Pink
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Ich bin Ewa, und dies ist meine Portfolio-App. '
              'Hier findest du Informationen über mich, meine Projekte und was mich begeistert. '
              'Viel Spaß beim Entdecken!',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFFF1493), // Hot Pink
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
