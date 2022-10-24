import 'package:flutter/material.dart';
import 'package:movie_apps/ui/gridView/gridInGrid.dart';
import 'package:movie_apps/ui/passingData/firstScreen.dart';

void main() {
  runApp(FirstScreen());
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
      home: GridInGrid(),
    );
  }
}
