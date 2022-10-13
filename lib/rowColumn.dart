import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Column',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Row Column and Wrap',
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Text('Row',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.amber,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.red,
                        height: 70,
                        width: 70,
                      ),
                    ],
                  ),
                  Text('Column',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Column(children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.blue,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.red,
                      height: 70,
                      width: 70,
                    ),
                  ]),
                  Text('Wrap',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Wrap(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.amber,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.red,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.amber,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                        height: 70,
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.red,
                        height: 70,
                        width: 70,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
