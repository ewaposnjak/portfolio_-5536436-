import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool newsletterAbonniert = false;
  bool benachrichtigungenAktiv = false;
  bool dunklerModus = false;
  bool offlineModus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE4EC),
      appBar: AppBar(
        title: const Text('Einstellungen'),
        backgroundColor: const Color(0xFFFF1493),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Checkbox 1
            CheckboxListTile(
              title: const Text(
                'Newsletter abonnieren',
                style: TextStyle(color: Color(0xFFFF1493)),
              ),
              activeColor: const Color(0xFFFF1493),
              value: newsletterAbonniert,
              onChanged: (value) {
                setState(() {
                  newsletterAbonniert = value ?? false;
                });
              },
            ),

            // Checkbox 2
            CheckboxListTile(
              title: const Text(
                'Benachrichtigungen erhalten',
                style: TextStyle(color: Color(0xFFFF1493)),
              ),
              activeColor: const Color(0xFFFF1493),
              value: benachrichtigungenAktiv,
              onChanged: (value) {
                setState(() {
                  benachrichtigungenAktiv = value ?? false;
                });
              },
            ),

            const SizedBox(height: 20),

            // Switch 1
            SwitchListTile(
              title: const Text(
                'Dunkler Modus',
                style: TextStyle(color: Color(0xFFFF1493)),
              ),
              activeColor: const Color(0xFFFF1493),
              value: dunklerModus,
              onChanged: (value) {
                setState(() {
                  dunklerModus = value;
                });
              },
            ),

            // Switch 2
            SwitchListTile(
              title: const Text(
                'Offline-Modus',
                style: TextStyle(color: Color(0xFFFF1493)),
              ),
              activeColor: const Color(0xFFFF1493),
              value: offlineModus,
              onChanged: (value) {
                setState(() {
                  offlineModus = value;
                });
              },
            ),

            const Spacer(),

            // Zusammenfassung der Auswahl
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFFF1493)),
              ),
              child: Text(
                'Auswahl:\n'
                'Newsletter: ${newsletterAbonniert ? "Ja" : "Nein"}\n'
                'Benachrichtigungen: ${benachrichtigungenAktiv ? "Ja" : "Nein"}\n'
                'Dunkler Modus: ${dunklerModus ? "An" : "Aus"}\n'
                'Offline-Modus: ${offlineModus ? "An" : "Aus"}',
                style: const TextStyle(color: Color(0xFFFF1493)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

