import 'dart:ui';

import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Resep Nasi Goreng',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: Scaffold(
            appBar: AppBar(title: Text('Resep Nasi Goreng'), centerTitle: true),
            body: SafeArea(
                child: Container(
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.all(20),
                        children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text('Nasi Goreng Rumahan',
                                  style: TextStyle(fontSize: 28))),
                          Row(children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/nasi-goreng-1.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              width: 90,
                              height: 90,
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/nasi-goreng-2.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              width: 90,
                              height: 90,
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/nasi-goreng-3.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              width: 90,
                              height: 90,
                            ),
                          ]),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              'Resep Nasi Goreng Rumahan',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Bahan:',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 320,
                            child: Text(
                              ' - Daging ayam 125 g. Cincang halus \n - Telur 1 butir. Kocok \n - Kecapmanis 2 sdm \n - Cabai merah 3 buah \n - Bawang merah 5 siung \n - Minyak \n - Garam 1 sdt \n - Merica sdt \n - Nasi 600 gr \n - Daun bawang 1 batang. Iris halus \n - Bawang putih 3 siung',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Langkah -langkah:',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 320,
                            child: Text(
                              ' 1. Masukkan bawang merah, bawang putih, dan cabai merah ke dalam cobek kemudian haluskan. \n 2. Goreng telur menjadi orak-arik lalu sisihkan. \n 3. Bumbu yang telah dihaluskan kemudian di tumis dengan minyak secukupnya. Tumis terus hingga harum. \n 4. Masukkan ayam cincang, telur, dan daun bawang ke dalam bumbu. Tumis lagi hingga merata. \n 5. Tambahkan kecap, garam, dan merica. Aduk hingga rata. \n 6. Kemudian masukkan nasi dan aduk hingga rata. \n 7. Nasi goreng telah jadi. sajikan pada piring saji.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                width: 90,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/choi-jungmin.jpg'),
                                        fit: BoxFit.cover)),
                                margin: EdgeInsets.only(top: 30, right: 10),
                              ),
                              Container(
                                  padding: EdgeInsets.all(20),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text('Hanztt',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center)),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ])))));
  }
}
