import 'package:flutter/material.dart';

class ContohStack extends StatefulWidget {
  const ContohStack({Key? key}) : super(key: key);

  @override
  State<ContohStack> createState() => _ContohStackState();
}

class _ContohStackState extends State<ContohStack> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penerapan Stack Widget',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // image: NetworkImage(
                      //     'https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
                      image: AssetImage('assets/images/sci-fi-wallpaper-1.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 100,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(
                      date.hour.toString() + ':' + date.minute.toString() + ':' + date.second.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 180,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(
                      date.year.toString() + '-' + date.month.toString() + '-' + date.day.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 230,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(
                      'Hello, how are you?',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 48,
                  left: 10,
                  right: 10,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'Benarkah? ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 16, right: 16, bottom: 8),
                          child: Text(
                              'Para Wibu memiliki senjata paling ampuh yang bisa digunakan untuk menghancurkan dunia.'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 16, bottom: 32),
                          child: Text('Issei Nugroho'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
