import 'package:flutter/material.dart';
import 'package:message/Acaunt/EditingAnAccount.dart';
import 'package:message/main.dart';

class Accounttable extends StatefulWidget {
  const Accounttable({super.key});

  @override
  State<Accounttable> createState() => _AccounttableState();
}

class _AccounttableState extends State<Accounttable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          child: Row(
            children: [
              Avatars(),
              SizedBox(
                width: 10,
              ),
              TextName(),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget Avatars() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: ClipOval(
        child: Image.asset(
          'image/black.png',
          width: 200,
        ),
      ),
    );
  }

  Widget TextName() {
    return Container(
      child: Column(
        children: [
          Text(
            'Персона',
            style: TextStyle(
                fontFamily: 'Massenger',
                fontSize: 20,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w900),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '@Person_280',
              style: TextStyle(
                  fontFamily: 'Massenger',
                  fontSize: 15,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }

  Widget Table() {
    return Container(
      color: Colors.black,
      height: 80,
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
          Spacer(),
          Text(
            'Акаунт',
            style: TextStyle(
                fontFamily: 'Massenger',
                fontSize: 30,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w900),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Editinganaccount(),
                ),
              );
            },
            icon: Icon(
              Icons.create_outlined,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
