import 'package:flutter/material.dart';

class GridViewCount2 extends StatefulWidget {
  const GridViewCount2({Key? key}) : super(key: key);

  @override
  _GridViewCount2State createState() => _GridViewCount2State();
}

class _GridViewCount2State extends State<GridViewCount2> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double appBarHeight = kToolbarHeight;
    final double paddingTop = mediaQueryData.padding.top;
    final double paddingBottom = mediaQueryData.padding.bottom;
    final double heightScreen =
        mediaQueryData.size.height - paddingBottom - paddingTop - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen/heightScreen,
          children: [
            Container(
              color: Colors.yellowAccent,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.brown,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
