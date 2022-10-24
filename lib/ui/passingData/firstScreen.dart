import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_apps/ui/passingData/secondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: FirstScreenContent(),
    );
  }
}

class FirstScreenContent extends StatefulWidget {
  const FirstScreenContent({Key? key}) : super(key: key);

  @override
  _FirstScreenContentState createState() => _FirstScreenContentState();
}

class _FirstScreenContentState extends State<FirstScreenContent> {
  TextEditingController namaController = TextEditingController();
  TextEditingController kelasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Input Data',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  controller: namaController,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Masukkan Nama',
                    prefixIcon: Icon(Icons.person_pin),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  controller: kelasController,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Kelas',
                    hintText: 'Masukkan Kelas',
                    prefixIcon: Icon(Icons.school),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 40,
                child: ElevatedButton(
                  onPressed: () => _showCupertinoDialog(
                    context,
                    namaController.text,
                    kelasController.text,
                  ),
                  child: Text(
                    'Kirim',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showCupertinoDialog(BuildContext context, String nama, String kelas) {
  if (nama.isEmpty || kelas.isEmpty) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Text(
        'Nama dan Kelas harus diisi!',
        style: TextStyle(fontFamily: 'Montserrat'),
      ),
      backgroundColor: Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return;
  }

  showDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text(
          'Data Tersimpan!',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        content: Text(
          'Anda Yakin Akan Mengirim Data ke Halaman Berikutnya?',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(
              'Tidak',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: Text(
              'Ya',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    nama: nama,
                    kelas: kelas,
                  ),
                ),
              );
            },
          ),
        ],
      );
    },
  );
}
