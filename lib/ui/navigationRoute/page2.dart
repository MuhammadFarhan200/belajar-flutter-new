import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookshelf'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bookshelf.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}