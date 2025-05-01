import 'package:coffe_system/src/model/cup.dart';
import 'package:coffe_system/src/widgets/CupCarousel.dart';
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
  int currentCup = 0;

  final List<CupModel> cupList = [];
  final List<CupModel> cupSelection = [];

  @override
  Widget build(BuildContext context) {
    cupSelection.addAll([
      CupModel(iD: 1, imageUrl: 'assets/images/coffe_cup.PNG'),
      CupModel(iD: 2, imageUrl: 'assets/images/small_cup.png'),
    ]);
    return BaseScaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(138, 95, 61, 1),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 20)),
            CupCarousel(
              cupTypes: cupSelection,
              onPageChanged: (index) {
                setState(() {
                  currentCup = index;
                });
              },
            ),
            OutlinedButton(
              onPressed: _addCoffe,
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
                children:
                    cupList
                        .map((cup) => CupWidget(cupImage: cup.imageUrl))
                        .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addCoffe() {
    setState(() {
      cupList.add(
        CupModel(
          iD: cupSelection[currentCup].iD,
          imageUrl: cupSelection[currentCup].imageUrl,
        ),
      );
      //cupList.add(CupModel(iD: 1, imageUrl: 'assets/images/coffe_cup.PNG'));
    });
  }
}
