import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);
  @override
  State<PantallaDiez> createState() => _PantallaDiezState(); // Corrección aquí
}

class _PantallaDiezState extends State<PantallaDiez> {
  // Corrección aquí
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2a44),
      appBar: AppBar(title: const Text('Pantalla Diez')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                'Switch',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: Image.asset(
                'assets/icon/oceano.jpg',
                width: double.infinity,
              ),
              secondChild: Image.asset(
                'assets/icon/Burbuja.jpg',
                width: double.infinity,
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
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
