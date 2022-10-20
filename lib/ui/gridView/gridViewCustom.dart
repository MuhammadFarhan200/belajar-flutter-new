import 'package:flutter/material.dart';

class GridViewCustom extends StatefulWidget {
  const GridViewCustom({Key? key}) : super(key: key);

  @override
  _GridViewCustomState createState() => _GridViewCustomState();
}

class _GridViewCustomState extends State<GridViewCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Custom'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildListDelegate(
            [
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
            ]
          ),
        ),
      ),
    );
  }
}
