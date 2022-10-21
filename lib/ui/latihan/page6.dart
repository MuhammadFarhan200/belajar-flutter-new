import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({ Key? key }) : super(key: key);

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 6'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/choi-jungmin.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}