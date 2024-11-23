import 'package:flutter/material.dart';

class Baner extends StatefulWidget {
  const Baner({super.key});

  @override
  State<Baner> createState() => _BanerState();
}

class _BanerState extends State<Baner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 255, 255, 255)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.groups,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.people,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
