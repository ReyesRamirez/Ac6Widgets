import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);
  @override
  State<PantallaSiete> createState() => Pantalla7();
}

class Pantalla7 extends State<PantallaSiete> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b2a44),
      appBar: AppBar(title: const Text('Pantalla Siete')),
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
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  color: Colors.blueGrey,
                  child: AnimatedAlign(
                    alignment:
                        selected ? Alignment.topRight : Alignment.bottomLeft,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: const FlutterLogo(size: 50.0),
                  ),
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
