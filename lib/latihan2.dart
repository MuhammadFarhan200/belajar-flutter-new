import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Row & Column',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan Row & Column'),
            centerTitle: true,
          ),
          body: SafeArea(
              child: ListView(padding: EdgeInsets.all(20), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                        child: Text(
                      'Webtoon',
                      style: TextStyle(fontSize: 30),
                    )),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/choi-jungmin.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                        height: 300,
                        width: 300),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae ratione ad asperiores omnis quas alias iure. Reprehenderit animi deserunt aut, vel provident nisi vitae accusantium aliquid harum, quis eveniet! At impedit, fugiat nam quas laudantium quasi doloremque non dolor neque aliquid dolores. Fugit saepe eaque ea. Ipsum eius sit quibusdam minus magni aut. Earum iure sit numquam, quam dignissimos error reiciendis, at, eius deleniti amet molestias. Quibusdam voluptate exercitationem quaerat rerum reprehenderit culpa veritatis dolor quia cupiditate eius quae commodi doloribus at repellat eos quam, qui modi, delectus nam amet, quasi atque. Ad illo quam, repellendus vel animi?',
                        style: TextStyle(),
                        textAlign: TextAlign.justify,
                      ),
                      width: 300,
                    )
                  ],
                )
              ],
            ),
          ]))),
    );
  }
}
