import 'package:flutter/material.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});
  final tituloTextStyle = const TextStyle(color: Colors.white, fontSize: 17);
  final subTituloTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter, padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 41, 40, 39)), // BoxDecoration
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "One Piece",
                style: tituloTextStyle,
              ),
              Text(
                "serie",
                style: subTituloTextStyle,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(.1)),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(.1)),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ], // Column
      ), // Row
    ); // Container
  }
}
