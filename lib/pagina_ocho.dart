import 'package:flutter/material.dart';
import 'dart:math' as math;

class PantallaOcho extends StatefulWidget {
  const PantallaOcho({Key? key}) : super(key: key);
  @override
  State<PantallaOcho> createState() => Pantalla8();
}

class Pantalla8 extends State<PantallaOcho> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b2a44),
      appBar: AppBar(title: const Text('Pantalla Ocho')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Aqui va codigo
            AnimatedBuilder(
              animation: _controller,
              child: const FlutterLogo(
                size: 100,
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
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
