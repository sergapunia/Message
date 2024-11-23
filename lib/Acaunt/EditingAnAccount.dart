import 'package:flutter/material.dart';
import 'package:message/Acaunt/MainAcaunt.dart';

class Editinganaccount extends StatefulWidget {
  const Editinganaccount({super.key});

  @override
  State<Editinganaccount> createState() => _EditinganaccountState();
}

class _EditinganaccountState extends State<Editinganaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Table(),
          Container(
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 31, 31, 31),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 107, 107, 107)),
                  child: Column(
                    children: [
                      Avatars(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.crop_original_rounded,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Spacer(),
          UserName(),
        ],
      ),
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

  Widget UserName() {
    return Container(
      child: TextButton(
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
                  builder: (context) => Mainacaunt(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(
            width: 86,
          ),
          Text(
            'Акаунт',
            style: TextStyle(
                fontFamily: 'Massenger',
                fontSize: 30,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
