import 'package:flutter/material.dart';
import 'package:message/UserChat/ChatPage.dart';
import 'package:message/UserChat/TebleChats.dart';

class Userchatmain extends StatefulWidget {
  const Userchatmain({super.key});

  @override
  State<Userchatmain> createState() => _UserchatmainState();
}

class _UserchatmainState extends State<Userchatmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      body: Column(
        children: [
          Teblechats(),
          ChatPage(),
        ],
      ),
    );
  }
}
