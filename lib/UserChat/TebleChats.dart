import 'package:flutter/material.dart';
import 'package:message/main.dart';

class Teblechats extends StatefulWidget {
  const Teblechats({super.key});

  @override
  State<Teblechats> createState() => _TeblechatsState();
}

class _TeblechatsState extends State<Teblechats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 80,
      padding: EdgeInsets.all(5),
      color: Colors.black,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => App(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          ClipOval(
            child: Image.asset(
              'image/black.png',
              width: 40,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Персона',
            style: TextStyle(
              fontFamily: 'Massenger',
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
