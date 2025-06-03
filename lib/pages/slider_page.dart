import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    // Anzahl Herzchen = Prozentual je 10 Punkte 1 Herz
    int heartCount = (_sliderValue / 10).round();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: const Text('Slider Seite'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Wert: ${_sliderValue.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 24),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.toStringAsFixed(0),
              activeColor: Colors.pink,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                '❤️' * heartCount,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.pink,
                      offset: Offset(1, 1),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
