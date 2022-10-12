import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Apps',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            centerTitle: true,
            title: Text('Learn Flutter', style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text('Hello Flutter',
                    style: GoogleFonts.montserrat(fontSize: 24))),
          )),
    );
  }
}
