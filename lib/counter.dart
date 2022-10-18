import 'package:flutter/material.dart';

class LatihanCounter extends StatefulWidget {
  const LatihanCounter({Key? key}) : super(key: key);

  @override
  _LatihanCounterState createState() => _LatihanCounterState();
}

class _LatihanCounterState extends State<LatihanCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Klik salah satu tombol untuk mengubah angka dibawah',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, right: 5),
              child: FloatingActionButton(
                onPressed: () {
                  if (_counter == 0) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            "Angka Mencapai 0, Anda Tidak Bisa Mengurangi Lagi Angka!",
                          ),
                        );
                      },
                    );
                  } else {
                    return _decrementCounter();
                  }
                },
                tooltip: 'Dicrement',
                child: const Icon(Icons.remove),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 5),
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
