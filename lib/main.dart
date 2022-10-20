import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_apps/ui/gridView/gridViewCount3.dart';

void main() {
  runApp(GridViewCount3());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'Flutter Apps',
      debugShowCheckedModeBanner: false,
      home: GridViewCount3(),
    );
  }
}
