import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LatihanCounter extends StatefulWidget {
  const LatihanCounter({Key? key}) : super(key: key);

  @override
  _LatihanCounterState createState() => _LatihanCounterState();
}

class _LatihanCounterState extends State<LatihanCounter> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
    return Scaffold(
      key: _scaffoldKey,
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
                    'Klik salah satu tombol untuk mengubah angka dibawah.',
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
              backgroundColor: Colors.redAccent,
              onPressed: () {
                if (_counter < 1) {
                  showSnackBar('Angka telah mencapai 0. \nAngka tidak bisa dikurangi lebih dari ini!');
                } else {
                  _decrementCounter();
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
    );
  }

  showSnackBar(text) {
    final snackbar = SnackBar(content: Text(text, style: TextStyle(fontFamily: 'Montserrat'),));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
