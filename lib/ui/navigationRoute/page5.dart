import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({ Key? key }) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/mie_ayam-2.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}