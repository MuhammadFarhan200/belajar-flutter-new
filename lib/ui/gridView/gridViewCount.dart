import 'package:flutter/material.dart';

class GridViewCount extends StatefulWidget {
  const GridViewCount({Key? key}) : super(key: key);

  @override
  _GridViewCountState createState() => _GridViewCountState();
}

class _GridViewCountState extends State<GridViewCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Count'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return Container(
              child: Card(
                color: Colors.purpleAccent,
              ),
            );
          }),
        ),
      ),
    );
  }
}
