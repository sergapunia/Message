import 'package:flutter/material.dart';
import 'package:message/Acaunt/MainAcaunt.dart';

class Massenger extends StatefulWidget {
  const Massenger({super.key});

  @override
  State<Massenger> createState() => _MassengerState();
}

class _MassengerState extends State<Massenger> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 158, 158, 158),
      child: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mainacaunt(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Massenger',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '''Этот massenger хорошый для того, чтобы написать своему другу, родствинекам и тд.
            ''',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            '''Автор этого проэкта: Illarionov Artem. 
            
Этот проэкт был создан на языке програмирования Flutter.

Massenger всегда обновляется - испровляя баги и недачоты.
''',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            '''Номер телефона технической потдержки: +7 917 715 23 43

E-mail: illarionov347@gmail.com

VK: https://vk.com/id623927646

Tg: https://t.me/ArtemIllarionib_280


''',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Center(
            child: Text(
              '''Хорошего дня!
              
              ''',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
          ClipOval(
            child: Image.asset(
              'asset/icon.png',
              width: 50,
            ),
          )
        ],
      ),
    );
  }
}
