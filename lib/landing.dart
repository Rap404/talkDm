import 'package:aplikasi/login.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 227, 146, 1),
      body: Container(
        width: 2000,
        height: 2000,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Text(
              'TalkDm',
              style: TextStyle(
                fontFamily: 'Hurricane',
                fontSize: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(10.0, 10.0),
                  child: Image.asset(
                    'assets/gambar1.png',
                    scale: 0.6,
                    width: 200,
                    height: 200,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-60.0, -40.0),
                  child: Image.asset(
                    'assets/gambar2.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Let's talk with new friends",
              style: TextStyle(fontFamily: 'ibarra', fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(270, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(26, 93, 26, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Get Started',
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
    );
  }
}
