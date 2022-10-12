import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Container',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Container Widget',
              style: GoogleFonts.montserrat(),
            )),
        body: Container(
          color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/fantasy-wallpaper.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 200,  
                width: 300,
              ),
              Container(
                child: Center(
                  child: Text(
                    'Ini adalah Container',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
