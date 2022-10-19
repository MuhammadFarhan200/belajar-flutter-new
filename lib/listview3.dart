import 'package:flutter/material.dart';

class ListviewSeparated extends StatefulWidget {
  const ListviewSeparated({Key? key}) : super(key: key);

  @override
  _ListviewSeparatedState createState() => _ListviewSeparatedState();
}

class _ListviewSeparatedState extends State<ListviewSeparated> {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          },
          // separatorBuilder: (context, position) {
          //   return Container(
          //     color: Colors.greenAccent,
          //     child: Text('Ini contoh separator Builder',
          //         style: TextStyle(fontSize: 18),),
          //   );
          // },
          separatorBuilder: (context, position) {
            if (position % 5 == 0) {
              return Container(
                height: 60,
                color: Colors.greenAccent,
                child: Center(
                    child: Text('Space Iklan-iklanan',
                        style: TextStyle(fontSize: 20))),
              );
            } else {
              return Divider();
            }
          },
          itemCount: bulan.length,
        ),
      ),
    );
  }
}
