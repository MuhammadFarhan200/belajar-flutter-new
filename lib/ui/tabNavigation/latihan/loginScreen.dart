import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_apps/ui/tabNavigation/latihan/menuScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'Wisata',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Login Formulir',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  controller: emailController,
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
                  obscureText: _isObscure,
                  controller: passwordController,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
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
                height: 45,
                child: ElevatedButton(
                  onPressed: () => _showCupertinoDialog(
                    context,
                    emailController.text,
                    passwordController.text,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
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

void _showCupertinoDialog(BuildContext context, String email, String password) {
  if (email.isEmpty || password.isEmpty) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Text(
        'Email dan Password harus diisi!',
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
          'Berhasil Login!',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        content: Text(
          'Anda Yakin Akan ke Halaman Berikutnya?',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(
              'Tidak',
              style: TextStyle(fontFamily: 'Montserrat', color: Colors.red),
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
                  builder: (context) => MenuScreen(
                    email: email,
                    password: password,
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
