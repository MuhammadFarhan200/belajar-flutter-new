import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({Key? key}) : super(key: key);

  @override
  _ListviewBuilderState createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
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
        title: Text('List View Builder'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(bulan[index], style: TextStyle(fontSize: 24),),
              ),
            );
          },
          itemCount: bulan.length,
        ),
      ),
    );
  }
}

class ListviewBuilder2 extends StatefulWidget {
  const ListviewBuilder2({Key? key}) : super(key: key);

  @override
  _ListviewBuilder2State createState() => _ListviewBuilder2State();
}

class _ListviewBuilder2State extends State<ListviewBuilder2> {
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
        title: Text('List View Builder'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 24),
                ),
                subtitle: Text('Ini subtitle dari ' + bulan[index]),
                leading: CircleAvatar(
                  child: Text(
                    bulan[index][0], 
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            );
          },
          itemCount: bulan.length,
        ),
      ),
    );
  }
}

