import 'package:flutter/material.dart';
import 'package:movie_apps/ui/contohAPI/albumScreen.dart';
import 'package:movie_apps/ui/contohAPI/contohAPI.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget splashScreen = SplashScreenView(
      navigateRoute: AlbumScreen(),
      duration: 3000,
      text: 'Welcome to My App',
      textStyle: TextStyle(fontSize: 30, color: Colors.white),
      textType: TextType.ScaleAnimatedText,
      backgroundColor: Colors.blueAccent,
    );

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'Flutter Apps',
      debugShowCheckedModeBanner: false,
      home: splashScreen,
    );
  }
}
