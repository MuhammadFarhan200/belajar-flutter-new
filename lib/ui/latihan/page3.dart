import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/sci-fi-wallpaper-1.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}