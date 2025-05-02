import 'package:flutter/material.dart';

class PantallaOnce extends StatefulWidget {
  const PantallaOnce({Key? key}) : super(key: key);
  @override
  State<PantallaOnce> createState() => _PantallaOnceState(); // Corrección aquí
}

class _PantallaOnceState extends State<PantallaOnce> {
  // Corrección aquí
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2a44),
      appBar: AppBar(title: const Text('Pantalla Once')), // Corrección aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              // Quité el SizedBox innecesario que envolvía AnimatedDefaultTextStyle
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60; // Corrección aquí
                  _color = _first ? Colors.red : Colors.blue; // Corrección aquí
                  _first = !_first;
                });
              },
              child: const Text(
                'Switch',
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
