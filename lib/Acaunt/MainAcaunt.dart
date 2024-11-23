import 'package:flutter/material.dart';
import 'package:message/Acaunt/AccountButton.dart';
import 'package:message/Acaunt/AccountTable.dart';

class Mainacaunt extends StatefulWidget {
  const Mainacaunt({super.key});

  @override
  State<Mainacaunt> createState() => _MainacauntState();
}

class _MainacauntState extends State<Mainacaunt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 24, 23, 23),
          child: Column(
            children: [
              Accounttable(),
            ],
          ),
        ),
        Accountbutton(),
      ],
    );
  }
}
