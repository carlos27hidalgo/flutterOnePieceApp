import 'package:flutter/material.dart';
import '../pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
/*
class listaPersonaje extends StatefulWidget {
  const listaPersonaje({super.key});

  @override
  State<listaPersonaje> createState() => _listaPersonajesState();
}

class _listaPersonajesState extends State<listaPersonaje> {
  double widthPantalla = 0;
  final tituloStyleText = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    widthPantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        children: [
          Text(
            "Portadas",
            style: tituloStyleText,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              bloquesPortada("p1.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthPantalla * 0.03,
              ),
              bloquesPortada("p2.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthPantalla * 0.03,
              ),
              bloquesPortada("p3.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthPantalla * 0.03,
              ),
              bloquesPortada("p3.jpg", "titulo", "subtitulo")
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          const SizedBox(
            height: 20,
          ),
          bloquePersonajes("Brook", 0xff21E295, "o1"),
          bloquePersonajes("Luffy", 0xff21E295, "o2"),
          bloquePersonajes("Portagas D. Ace", 0xff21E295, "o3"),
          bloquePersonajes("Boa Hancock", 0xff21E295, "o4"),
          bloquePersonajes("Boa Hancock", 0xff21E295, "o5"),
          bloquePersonajes("Roronoa Zoro", 0xff21E295, "o6"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String nombre, int color, String imagen) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => DetailPage(
                    color: color,
                    image: "assets/$imagen.png",
                    nombre: nombre,
                  )));
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(66, 56, 55, 55)),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          offset: const Offset(0, 5),
                          spreadRadius: 0.0,
                          blurStyle: BlurStyle.normal,
                          color: Color(color))
                    ], borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(8),
                    child: Hero(
                        tag: color, child: Image.asset("assets/$imagen.png")),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    nombre,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
                color: Colors.grey,
              )
            ],
          ),
        ));
  }

  Widget bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthPantalla * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
            text: TextSpan(
                text: titulo,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                  text: subtitulo,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
*/

class listaPersonaje extends StatefulWidget {
  const listaPersonaje({Key? key});

  @override
  State<listaPersonaje> createState() => _listaPersonajesState();
}

class _listaPersonajesState extends State<listaPersonaje> {
  double widthPantalla = 0;
  final tituloStyleText = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    widthPantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        children: [
          Text(
            "Portadas",
            style: tituloStyleText,
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            // Wrap the Row with SingleChildScrollView
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                bloquesPortada("p1.jpg", "titulo", "2021"),
                SizedBox(
                  width: widthPantalla * 0.03,
                ),
                bloquesPortada("p2.jpg", "titulo", "2022"),
                SizedBox(
                  width: widthPantalla * 0.03,
                ),
                bloquesPortada("p3.jpg", "titulo", "2023"),
                SizedBox(
                  width: widthPantalla * 0.03,
                ),
                bloquesPortada("p3.jpg", "titulo", "2023")
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          const SizedBox(
            height: 20,
          ),
          bloquePersonajes("Brook", 0xff21E295, "o1"),
          bloquePersonajes("Luffy", 0xffF82A2D, "o2"),
          bloquePersonajes("Portagas D. Ace", 0xffFFCB2B, "o3"),
          bloquePersonajes("Boa Hancock", 0xffFE4649, "o4"),
          bloquePersonajes("Boa Hancock", 0xffDF1C6A, "o5"),
          bloquePersonajes("Roronoa Zoro", 0xff21E295, "o6"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String nombre, int color, String imagen) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
          builder: (context) => DetailPage(
            color: color,
            image: "assets/$imagen.png",
            nombre: nombre,
          ),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(66, 56, 55, 55),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: const Offset(0, 5),
                        spreadRadius: 0.0,
                        blurStyle: BlurStyle.normal,
                        color: Color(color),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Hero(
                    tag: color,
                    child: Image.asset("assets/$imagen.png"),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  nombre,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthPantalla * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
            text: titulo,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            children: [
              TextSpan(
                text: subtitulo,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
