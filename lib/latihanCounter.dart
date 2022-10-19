import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

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
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Klik salah satu tombol dibawah untuk mengubah angka.',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 20 + double.parse(_counter.toString()), color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: FloatingActionButton(
                          backgroundColor: Colors.red,
                          onPressed: () {
                            if (_counter < 1) {
                              showSnackBar(
                                  'Angka tidak bisa dikurangi lebih dari ini!');
                            } else {
                              _decrementCounter();
                            }
                          },
                          tooltip: 'Dicrement',
                          child: const Icon(Icons.remove),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: FloatingActionButton(
                          backgroundColor: Colors.black54,
                          onPressed: _incrementCounter,
                          tooltip: 'Increment',
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showSnackBar(text) {
    var snackBar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'OPPS',
        message: text,
        contentType: ContentType.failure,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
