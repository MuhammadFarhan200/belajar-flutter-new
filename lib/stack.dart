import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Container(
                  color: Colors.blueAccent,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.greenAccent,
                    ),
                    width: 300,
                    height: 400,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IndexedStackWidget extends StatelessWidget {
  const IndexedStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indexed Stack Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Indexed Stack Widget'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: IndexedStack(
              index: 1,
              children: [
                Container(
                  color: Colors.blueAccent,
                ),
                Container(
                  color: Colors.red,
                  height: 400.0,
                  width: 300.0,
                ),
                Positioned(
                  right: 40.0,
                  top: 100.0,
                  child: Container(
                    color: Colors.deepPurpleAccent,
                    height: 200.0,
                    width: 200.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
