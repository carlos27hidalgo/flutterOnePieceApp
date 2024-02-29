import 'package:flutter/material.dart';
import 'package:proyecto_final_onepiece/src/widgets/header_widget.dart';
import 'package:proyecto_final_onepiece/src/widgets/lista_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: const <Widget>[
          Headerwidget(),
          listaPersonaje()
        ], // <Widget>[]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 95, 25, 208),
        child: Icon(Icons.add),
      ), // Column
    ); // Scaffold
  }
}
