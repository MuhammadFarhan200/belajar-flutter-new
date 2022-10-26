import 'package:flutter/material.dart';
import 'package:movie_apps/data/model/albumModel.dart';
import 'package:movie_apps/service/albumService.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  List<Album> listAlbum = [];
  AlbumService albumService = AlbumService();

  getData() async {
    listAlbum = await albumService.getData();
    setState(() {});
  }

  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Fetch API'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(listAlbum[index].title),
              ),
            );
          },
          itemCount: listAlbum.length,
        ),
      ),
    );
  }
}
