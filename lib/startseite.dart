import 'package:flutter/material.dart';

class Startseite extends StatelessWidget {
  const Startseite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC0CB), // Hintergrundfarbe auf Rosa-Pink setzen
      appBar: AppBar(
        title: const Text('Willkommen!'),
        centerTitle: true,
        backgroundColor: Color(0xFF9C1B6C), // Dunkles Pink für die AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Hallo und herzlich willkommen!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF9C1B6C), // Dunkles Pink für den Text
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Ich bin Ewa, und dies ist meine Portfolio-App. '
              'Hier findest du Informationen über mich, meine Projekte und was mich begeistert. '
              'Viel Spaß beim Entdecken!',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF9C1B6C), // Dunkles Pink für den Text
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
