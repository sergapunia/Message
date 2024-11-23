import 'package:flutter/material.dart';
import 'package:message/UserChat/UserChatMain.dart';

class Searchavatars extends StatefulWidget {
  const Searchavatars({super.key});

  @override
  State<Searchavatars> createState() => _SearchavatarsState();
}

class _SearchavatarsState extends State<Searchavatars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 82,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Craete(),
            Craete(),
            Craete(),
            Craete(),
            Craete(),
            Craete(),
            Craete(),
            Craete(),
            Craete(),
          ],
        ),
      ),
    );
  }

  Widget Craete() {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Userchatmain(),
              ),
            );
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  'image/black.png',
                  width: 49,
                ),
              ),
              Text(
                'Персона',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Massenger',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
