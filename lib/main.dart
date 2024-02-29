import 'package:flutter/material.dart';
import 'package:proyecto_final_onepiece/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "main",
      home: Home(),
    ); // MaterialApp
  }
}

//falta widget.name
// nota en linea 69 a las instancias de infoTitle se le puso const pero fue error en mi codigo