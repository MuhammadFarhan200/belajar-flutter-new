import 'package:flutter/material.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({Key? key}) : super(key: key);

  @override
  _TabBarNavigationState createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        title: 'Tab Navigation',
        theme: ThemeData(fontFamily: 'Montserrat'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            centerTitle: true,
            bottom: TabBar(
              onTap: (index) {},
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.info),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: TabBarView(
              children: [
                Center(
                  child: Text(
                    'Halaman Beranda',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Center(
                  child: Text(
                    'Halaman Info',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
