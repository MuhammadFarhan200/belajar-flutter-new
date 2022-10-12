import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_apps/container.dart';

void main() {
  runApp(const ContainerWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Flutter Apps',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.black87,
            centerTitle: true,
            title: Text('Learn Flutter', style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Text('Hello Flutter \n Saya Hanztt',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontStyle: FontStyle.italic)),
          )),
    );
  }
}
