import 'package:aplikasi/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 227, 146, 1),
      body: Container(
        width: 2000,
        height: 2000,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              const Text(
                'SignUp Now',
                style: TextStyle(
                  fontFamily: 'ibarra',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(26, 93, 26, 1),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 300,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontFamily: 'ibarra', fontWeight: FontWeight.bold),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26,
                              1)), // Ubah warna garis bawah saat fokus
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26,
                              1)), // Ubah warna garis bawah saat tidak fokus
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'ibarra', fontWeight: FontWeight.bold),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26,
                              1)), // Ubah warna garis bawah saat fokus
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26,
                              1)), // Ubah warna garis bawah saat tidak fokus
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                        fontFamily: 'ibarra', fontWeight: FontWeight.bold),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26,
                              1)), // Ubah warna garis bawah saat fokus
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26,
                              1)), // Ubah warna garis bawah saat tidak fokus
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color.fromRGBO(26, 93, 26, 1),
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Or login with',
                style: TextStyle(
                    color: Color.fromRGBO(125, 119, 99, 1),
                    fontFamily: 'ibarra',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(300, 50)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(253, 244, 214, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Login with Facebook',
                        style: TextStyle(
                            color: Color.fromRGBO(125, 119, 99, 1),
                            fontFamily: 'ibarra',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(300, 50)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(253, 244, 214, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                        size: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Login with Google  ',
                        style: TextStyle(
                            color: Color.fromRGBO(125, 119, 99, 1),
                            fontFamily: 'ibarra',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(300, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(26, 93, 26, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  ' Sign Up',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ibarra',
                      color: Colors.yellow),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
