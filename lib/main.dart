import 'package:flutter/material.dart';
import 'package:message/MainScreen/SearchAvatars.dart';
import 'package:message/MainScreen/baner.dart';
import 'package:message/MainScreen/contact.dart';
import 'package:message/MainScreen/table.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: App(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 22, 23),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Tables(),
          Searchavatars(),
          Contact(),
          Baner(),
        ],
      ),
    );
  }
}
