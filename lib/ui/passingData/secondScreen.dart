import 'package:flutter/material.dart';
import 'package:movie_apps/ui/passingData/firstScreen.dart';

class SecondScreen extends StatefulWidget {
  final String nama;
  final String kelas;
  const SecondScreen({Key? key, required this.nama, required this.kelas})
      : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstScreen(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Output Data',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Nama : ' + widget.nama,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Kelas : ' + widget.kelas,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
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
