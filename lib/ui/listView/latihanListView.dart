import 'package:flutter/material.dart';

class LatihanListView extends StatefulWidget {
  const LatihanListView({Key? key}) : super(key: key);

  @override
  _LatihanListViewState createState() => _LatihanListViewState();
}

class _LatihanListViewState extends State<LatihanListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan List View'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                  image: AssetImage('assets/images/sci-fi-wallpaper-1.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum velit id architecto omnis maxime, voluptatibus non. Aperiam ea quasi voluptate incidunt, vel voluptas, modi dolorum fuga dolor reiciendis at non quia, soluta error esse officia ipsa minima iste voluptates aliquam earum! Aspernatur molestiae sit dolore illo tempora. Aliquam, praesentium explicabo?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum velit id architecto omnis maxime, voluptatibus non. Aperiam ea quasi voluptate incidunt, vel voluptas, modi dolorum fuga dolor reiciendis at non quia, soluta error esse officia ipsa minima iste voluptates aliquam earum! Aspernatur molestiae sit dolore illo tempora. Aliquam, praesentium explicabo?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: FlutterLogo(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: FlutterLogo(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FlutterLogo(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FlutterLogo(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FlutterLogo(),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Hanztt',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
