import 'package:flutter/material.dart';
import 'package:movie_apps/ui/latihan/page1.dart';
import 'package:movie_apps/ui/latihan/page2.dart';
import 'package:movie_apps/ui/latihan/page3.dart';
import 'package:movie_apps/ui/latihan/page4.dart';
import 'package:movie_apps/ui/latihan/page5.dart';
import 'package:movie_apps/ui/latihan/page6.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Route Navigation',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: [
              Card(
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page1(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.laptop, size: 50),
                      Text('Technology'),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page2(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu_book, size: 50),
                      Text('Bookshelf'),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page3(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.art_track, size: 50),
                      Text('Sci-fi Art'),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page4(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image, size: 50),
                      Text('Fantasy'),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page5(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.food_bank_outlined, size: 50),
                      Text('Food'),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page6(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.animation_sharp, size: 50),
                      Text('Webtoon'),
                    ],
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
