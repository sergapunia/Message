import 'package:flutter/material.dart';
import 'package:message/Long%20in%20and%20Sing%20up/LongIn.dart';
import 'package:message/MASSENGER/MASSENGER.dart';

class Accountbutton extends StatefulWidget {
  const Accountbutton({super.key});

  @override
  State<Accountbutton> createState() => _AccountbuttonState();
}

class _AccountbuttonState extends State<Accountbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          OutAccount(),
          SizedBox(
            height: 350,
          ),
          PoliticConfidehionls(),
        ],
      ),
    );
  }

  Widget OutAccount() {
    return Container(
      width: 400,
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 31, 31, 31),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationPage(),
            ),
          );
        },
        child: Row(
          children: [
            Text(
              '[←    Выйти с акаунта',
              style: TextStyle(
                color: const Color.fromARGB(255, 165, 34, 34),
                fontFamily: 'Massenger',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget PoliticConfidehionls() {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Massenger(),
            ),
          );
        },
        child: Text(
          'Подробнее о massenger',
          style: TextStyle(
            color: const Color.fromARGB(255, 190, 188, 188),
            fontFamily: 'Massenger',
          ),
        ),
      ),
    );
  }
}
