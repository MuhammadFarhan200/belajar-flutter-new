import 'package:flutter/material.dart';
import 'package:movie_apps/data/datasource/remote/api_service.dart';
import 'package:movie_apps/data/model/picsum.dart';

class GridViewCount3 extends StatefulWidget {
  const GridViewCount3({Key? key}) : super(key: key);

  @override
  State<GridViewCount3> createState() => _GridViewCount3State();
}

class _GridViewCount3State extends State<GridViewCount3> {
  List<Picsum> list = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Grid View',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Montserrat'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(8),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: list.map(
                (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          image: DecorationImage(image: NetworkImage(e.thumbnail()))
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 32,
                          width: double.maxFinite,
                          color: Colors.black45,
                        child: Text(e.author),
                        ),
                      ),
                      // Positioned(
                      //   left: 8,
                      //   bottom: 8,
                      //   child: Text(e.author),
                      // ),
                    ],
                  ),
                ),
              )
              .toList(),
            ),
          ),
        ),
      ),
    );
  }

  fetchData() async {
    final response = await ApiService().get();
    list.addAll(response);
    setState(() {});
  }
}
