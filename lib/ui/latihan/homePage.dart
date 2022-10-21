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
          padding: EdgeInsets.all(20),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
            children: [
              Card(
                child: IconButton(
                  iconSize: 50,
                  hoverColor: Colors.black12,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page1(),
                    );
                    Navigator.push(context, route);
                  },
                  tooltip: 'Technology',
                  icon: Icon(Icons.laptop),
                ),
              ),
              Card(
                child: IconButton(
                  iconSize: 50,
                  hoverColor: Colors.black12,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page2(),
                    );
                    Navigator.push(context, route);
                  },
                  tooltip: 'Bookshelf',
                  icon: Icon(Icons.menu_book_sharp),
                ),
              ),
              Card(
                child: IconButton(
                  iconSize: 50,
                  hoverColor: Colors.black12,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page3(),
                    );
                    Navigator.push(context, route);
                  },
                  tooltip: 'Art',
                  icon: Icon(Icons.art_track),
                ),
              ),
              Card(
                child: IconButton(
                  iconSize: 50,
                  hoverColor: Colors.black12,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page4(),
                    );
                    Navigator.push(context, route);
                  },
                  tooltip: 'Fantasy',
                  icon: Icon(Icons.wallpaper_rounded),
                ),
              ),
              Card(
                child: IconButton(
                  iconSize: 50,
                  hoverColor: Colors.black12,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page5(),
                    );
                    Navigator.push(context, route);
                  },
                  tooltip: 'Food',
                  icon: Icon(Icons.food_bank_outlined),
                ),
              ),
              Card(
                child: IconButton(
                  iconSize: 50,
                  hoverColor: Colors.black12,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => Page6(),
                    );
                    Navigator.push(context, route);
                  },
                  tooltip: 'Webtoon',
                  icon: Icon(Icons.animation_sharp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
