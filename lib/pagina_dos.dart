import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Show About Dialog'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                  applicationIcon: FlutterLogo(),
                  applicationLegalese: 'Legalese',
                  applicationName: 'Flutter App',
                  applicationVersion: 'version 1.0.0',
                  children: [Text('This is a text created by Flutter Mapp')],
                ),
              );
            },
          ),
          const SizedBox(height: 20), // Espacio entre los botones
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar!'),
          ),
        ],
      ),
    );
  }
}
