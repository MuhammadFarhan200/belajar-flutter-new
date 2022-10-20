import 'package:flutter/material.dart';

class BelajarGridView extends StatefulWidget {
  const BelajarGridView({Key? key}) : super(key: key);

  @override
  _BelajarGridViewState createState() => _BelajarGridViewState();
}

class _BelajarGridViewState extends State<BelajarGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
