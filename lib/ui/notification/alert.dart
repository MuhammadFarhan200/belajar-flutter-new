import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/cupertino.dart';

class AlertNotification extends StatefulWidget {
  const AlertNotification({Key? key}) : super(key: key);

  @override
  _AlertNotificationState createState() => _AlertNotificationState();
}

class _AlertNotificationState extends State<AlertNotification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  controller: _emailController,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Masukkan Email',
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  controller: _passwordController,
                  maxLines: 1,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan Password',
                    prefixIcon: Icon(Icons.lock),
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
                  onPressed: () => sweatAlert(
                    context,
                    _emailController.text,
                    _passwordController.text,
                  ),
                  child: Text('Login'),
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

void submit(BuildContext context, String email, String password) {
  if (email.isEmpty || password.isEmpty) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Text(
        'Email dan Password harus diisi',
        style: TextStyle(fontFamily: 'Montserrat'),
      ),
      backgroundColor: Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return;
  }

  AlertDialog alert = AlertDialog(
    title: Text('Login Berhasil'),
    content: Container(
      child: Text('Selamat Anda Berhasil Login'),
    ),
    actions: [
      TextButton(
        child: Text('OK'),
        onPressed: (() => Navigator.of(context).pop()),
      ),
    ],
  );

  showDialog(context: context, builder: (context) => alert);
}

void sweatAlert(BuildContext context, String email, String password) {
  if (email.isEmpty || password.isEmpty) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Text(
        'Email dan Password harus diisi',
        style: TextStyle(fontFamily: 'Montserrat'),
      ),
      backgroundColor: Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return;
  }

  Alert(
    context: context,
    type: AlertType.success,
    title: "Login berhasil",
    desc: "Selamat anda berhasil login",
    buttons: [
      DialogButton(
        child: Text(
          "Selanjutnya",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        onPressed: () => Navigator.pop(context),
      )
    ],
  ).show();
  return;
}

void _showCupertinoDialog(BuildContext context, String email, String password) {
  if (email.isEmpty || password.isEmpty) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Text(
        'Email dan Password harus diisi',
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
          'Berhasil',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        content: Text(
          'Silahkan Ikuti Langkah Selanjutnya!',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        actions: [
          CupertinoDialogAction(
            child: Text('Tidak'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: Text('Ya'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
