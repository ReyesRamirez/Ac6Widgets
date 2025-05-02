import 'package:flutter/material.dart';
import 'package:ramirez1289/pagina_uno.dart';
import 'package:ramirez1289/pagina_dos.dart';
import 'package:ramirez1289/pagina_tres.dart';
import 'package:ramirez1289/pagina_cuatro.dart';
import 'package:ramirez1289/pagina_cinco.dart';
import 'package:ramirez1289/pagina_seis.dart';
import 'package:ramirez1289/pagina_siete.dart';
import 'package:ramirez1289/pagina_ocho.dart';
import 'package:ramirez1289/pagina_nueve.dart';
import 'package:ramirez1289/pagina_diez.dart';
import 'package:ramirez1289/pagina_once.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
