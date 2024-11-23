import 'package:flutter/material.dart';
import 'package:message/Long%20in%20and%20Sing%20up/LongIn.dart';
import 'package:message/main.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<Signup> {
  bool showPasworld = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 23, 23),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(),
                SizedBox(height: 30.0),
                InputUser(),
                SizedBox(height: 24.0),
                Button(),
                SizedBox(height: 15),
                ButtonText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TitleText() {
    return Padding(
      padding: EdgeInsets.only(top: 50.0),
      child: Text(
        'Вход',
        style: TextStyle(
          fontFamily: 'Massenger',
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget InputUser() {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 5,
                color: const Color.fromARGB(255, 58, 58, 58),
              ),
            ),
            hintText: 'Телефон',
            filled: true,
            fillColor: Colors.white.withOpacity(0.8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextField(
                obscureText: !showPasworld,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: const Color.fromARGB(255, 58, 58, 58),
                    ),
                  ),
                  hintText: 'Пароль',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  showPasworld = !showPasworld;
                });
              },
              icon: Icon(
                showPasworld ? Icons.visibility_off : Icons.visibility,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget ButtonText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Нет акаунта?',
          style: TextStyle(
            fontFamily: 'Massenger',
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegistrationPage(),
              ),
            );
          },
          child: Text(
            'Зарегистрираваться',
            style: TextStyle(
              fontFamily: 'Massenger',
              color: Colors.blue,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget Button() {
    return Container(
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => App(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Далее',
          style: TextStyle(
              fontFamily: 'Massenger',
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }
}
