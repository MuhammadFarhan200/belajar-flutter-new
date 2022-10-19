import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_apps/column.dart';
import 'package:movie_apps/container.dart';
import 'package:movie_apps/counter.dart';
import 'package:movie_apps/latihanCounter.dart';
import 'package:movie_apps/latihanListView.dart';
import 'package:movie_apps/listview3.dart';
import 'package:movie_apps/stack2.dart';
import 'package:movie_apps/latihan2.dart';
import 'package:movie_apps/latihan3.dart';
import 'package:movie_apps/rowColumn.dart';
import 'package:movie_apps/row_column.dart';
import 'package:movie_apps/stack.dart';
import 'package:movie_apps/listview.dart';
import 'package:movie_apps/listview2.dart';

void main() {
  runApp(MyApp());
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
      home: LatihanListView(),
    );
  }
}
