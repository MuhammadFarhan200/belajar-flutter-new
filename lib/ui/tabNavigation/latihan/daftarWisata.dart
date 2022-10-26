import 'package:flutter/material.dart';

class DaftarWisata extends StatefulWidget {
  const DaftarWisata({Key? key}) : super(key: key);

  @override
  _DaftarWisataState createState() => _DaftarWisataState();
}

class _DaftarWisataState extends State<DaftarWisata> {
  @override
  Widget build(BuildContext context) {
    var widtPadding = MediaQuery.of(context).padding.left +
        MediaQuery.of(context).padding.right;
    var deviceWidth = MediaQuery.of(context).size.width - widtPadding;
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Wisata'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Daftar Tempat Wisata yang Tersedia:',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      image: DecorationImage(
                        image: AssetImage('assets/images/technology.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Suscipit, qui.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 95,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/technology.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: deviceWidth * 0.5,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Suscipit, qui.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 95,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/technology.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: deviceWidth * 0.5,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Suscipit, qui.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
