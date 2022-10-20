import 'package:flutter/material.dart';

class GridViewExtent extends StatefulWidget {
  const GridViewExtent({Key? key}) : super(key: key);

  @override
  _GridViewExtentState createState() => _GridViewExtentState();
}

class _GridViewExtentState extends State<GridViewExtent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Extent'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: GridView.extent(
          maxCrossAxisExtent: 400,
          children: [
            FlutterLogo(),
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
