import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterLatihan extends StatefulWidget {
  const CounterLatihan({Key? key}) : super(key: key);

  @override
  _CounterLatihanState createState() => _CounterLatihanState();
}

class _CounterLatihanState extends State<CounterLatihan> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = new GlobalKey<ScaffoldMessengerState>();
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
      scaffoldMessengerKey: _scaffoldKey,
      title: 'Counter',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        // key: _globalKey,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: new SafeArea(
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
              margin: EdgeInsets.all(5),
              child: FloatingActionButton(
                onPressed: () {
                  if (_counter == 0) {
                    return showSnackbar('Angka sudah tidak bisa dikurangi');
                  } else {
                    return _decrementCounter();
                  }
                },
                tooltip: 'Dicrement',
                child: const Icon(Icons.remove),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
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
  showSnackbar(text) {
    final snackbar = SnackBar(
      content: Text(text),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
