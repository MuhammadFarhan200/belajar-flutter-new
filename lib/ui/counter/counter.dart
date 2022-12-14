import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class CounterLatihan extends StatefulWidget {
  const CounterLatihan({Key? key}) : super(key: key);

  @override
  _CounterLatihanState createState() => _CounterLatihanState();
}

class _CounterLatihanState extends State<CounterLatihan> {
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
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Klik salah satu tombol dibawah untuk mengubah angka.',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  '$_counter',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 200,
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, right: 5),
              child: FloatingActionButton(
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  if (_counter < 1) {
                    showSnackBar();
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
      ),
    );
  }

  showSnackBar() {
    var snackBar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'OPPS',
        message: 'Angka tidak bisa dikurangi lebih dari ini!',
        contentType: ContentType.failure,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
