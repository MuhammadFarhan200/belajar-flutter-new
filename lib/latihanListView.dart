import 'package:flutter/material.dart';

class LatihanListView extends StatefulWidget {
  const LatihanListView({ Key? key }) : super(key: key);

  @override
  _LatihanListViewState createState() => _LatihanListViewState();
}

class _LatihanListViewState extends State<LatihanListView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'Latihan List View',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan List View'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
              children: [
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}