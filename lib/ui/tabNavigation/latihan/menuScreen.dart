import 'package:flutter/material.dart';
import 'package:movie_apps/ui/tabNavigation/latihan/daftarWisata.dart';
import 'package:movie_apps/ui/tabNavigation/latihan/homeScreen.dart';
import 'package:movie_apps/ui/tabNavigation/latihan/profil.dart';

class MenuScreen extends StatefulWidget {
  final String email;
  final String password;
  const MenuScreen({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = [
      HomeScreen(),
      DaftarWisata(),
      ProfilScreen(),
    ];

    return MaterialApp(
      title: 'Wisata',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _listPage[_selectedNavbar],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Daftar Wisata',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedNavbar,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _changeSelectedNavBar,
        ),
      ),
    );
  }
}
