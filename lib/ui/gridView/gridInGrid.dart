import 'package:flutter/material.dart';

class GridInGrid extends StatefulWidget {
  const GridInGrid({Key? key}) : super(key: key);

  @override
  _GridInGridState createState() => _GridInGridState();
}

class _GridInGridState extends State<GridInGrid> {
  final List alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid in Grid'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: [
            GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              children: List.generate(alphabet.length, (index) {
                return Container(
                  height: 100,
                  child: Card(
                    child: Center(
                      child: Text(
                        alphabet[index],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                );
              }),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlutterLogo(),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlutterLogo(),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
