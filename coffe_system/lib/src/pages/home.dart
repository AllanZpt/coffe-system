import 'dart:math';

import 'package:coffe_system/src/widgets/base_scaffold.dart';
import 'package:coffe_system/src/widgets/drinkedCup.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int drinkedCups = 0;

  final List<Offset> copoPositions = [];
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BaseScaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(138, 95, 61, 1),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 20)),
            Image.asset('assets/images/coffe_cup.PNG', width: 380, height: 380),
            OutlinedButton(
              onPressed: () {
                _addCoffe();
              },
              child: Text(
                'Tomar 1 copo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black, // cor do texto
                backgroundColor: Colors.amber, // cor de fundo
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  drinkedCups,
                  CupWidget(cupImage: 'assets/images/coffe_cup.PNG'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addCoffe() {
    setState(() {
      drinkedCups++;
    });
  }
}
