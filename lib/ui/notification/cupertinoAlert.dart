import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAlert extends StatefulWidget {
  const CupertinoAlert({Key? key}) : super(key: key);

  @override
  _CupertinoAlertState createState() => _CupertinoAlertState();
}

class _CupertinoAlertState extends State<CupertinoAlert> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino Alert',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: CupertinoTest(),
    );
  }
}

class CupertinoTest extends StatefulWidget {
  const CupertinoTest({Key? key}) : super(key: key);

  @override
  _CupertinoTestState createState() => _CupertinoTestState();
}

class _CupertinoTestState extends State<CupertinoTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Alert'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      _showCupertinoDialog(context);
                    },
                    child: const Text('Show Cupertino Dialog'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      _showCupertinoModal(context);
                    },
                    child: Text('Show Cupertino Modal Dialog'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      _showCupertinoDatePicker(context);
                    },
                    child: Text('Show Cupertino Date Picker'),
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
      ),
    );
  }
}

_showCupertinoDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text('Accept'),
        content: Text('Do you want to accept?'),
        actions: [
          CupertinoDialogAction(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

_showCupertinoModal(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: Text(
          'Hobbies',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
        ),
        message: Text(
          'Select Your Hobbie!',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 18),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Coding',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Main Game',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Nonton Anime',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
        ],
      );
    },
  );
}

_showCupertinoDatePicker(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return Container(
        color: Colors.white,
        height: 300,
        child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (dateTime) {},
        ),
      );
    },
  );
}
