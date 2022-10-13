import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'Belajar Container',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Container Widget',
            )),
        body: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                transform: Matrix4.rotationZ(0.1),
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/fantasy-wallpaper.jpg'),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 200,
                width: 300,
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                transform: Matrix4.rotationZ(0.1),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Ini adalah Container',
                    style: TextStyle(fontSize: 20),
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
