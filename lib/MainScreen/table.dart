import 'package:flutter/material.dart';
import 'package:message/Acaunt/MainAcaunt.dart';

class Tables extends StatefulWidget {
  const Tables({super.key});

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Messenger',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'Massenger',
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return Dialog(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Новые сообщения',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Massenger',
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('1. '),
                                      Text(
                                        'Привет',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Massenger',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('2. '),
                                      Text(
                                        'Привет',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Massenger',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('3. '),
                                      Text(
                                        'Привет',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Massenger',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('4. '),
                                      Text(
                                        'Привет',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Massenger',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                width: 150,
                                child: TextButton(
                                  onPressed: Navigator.of(context).pop,
                                  child: const Text(
                                    'Закрыть',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: 'Massenger',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mainacaunt(),
                    ),
                  );
                },
                child: ClipOval(
                  child: Image.asset(
                    'image/black.png',
                    width: 35,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5,
                        color: const Color.fromARGB(255, 58, 58, 58),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    hintText: 'Поиск...',
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
