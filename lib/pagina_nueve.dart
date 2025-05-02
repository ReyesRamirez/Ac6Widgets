import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);
  @override
  State<PantallaNueve> createState() => Pantalla9();
}

class Pantalla9 extends State<PantallaNueve> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b2a44),
      appBar: AppBar(title: const Text('Pantalla Nueve')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200.0 : 100.00,
                  height: selected ? 100.0 : 200.00,
                  color: selected ? Colors.blueGrey : Colors.white,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 75),
                ),
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
