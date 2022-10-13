import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightBlueAccent,
          ),
          child: Center(
            child: Container(
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/fantasy-wallpaper.jpg'),
                      fit: BoxFit.cover),
                ),
                height: 350,
                width: 300),
          ),
        ),
      ),
    );
  }
}
