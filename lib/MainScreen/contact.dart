import 'package:flutter/material.dart';
import 'package:message/UserChat/UserChatMain.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
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
    );
  }

  Widget Craete() {
    return Column(
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
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 29, 29, 29),
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'image/black.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      'Персона',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Massenger',
                      ),
                    ),
                    Text(
                      'Ты: привет',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 153, 152, 152),
                          fontFamily: 'Massenger',
                          fontSize: 11),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '00:00',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 153, 152, 152),
                      fontFamily: 'Massenger',
                      fontSize: 11),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
