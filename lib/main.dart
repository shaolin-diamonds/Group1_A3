import 'package:flutter/material.dart';
import 'gustavosfolder/gustavospage.dart';
import 'chevysfolder/chevyspage.dart';
import 'dylansfolder/dylanspage.dart';
import 'anthonysfolder/anthonyspage.dart';

/*
  Authors:
    Anthony Huisenga-Wills​
    Dylan Feddersen​
    Chevy Rios​
    Gustavo Marin Borges
  Date: 10/13/2022
  Title: Group Assignment 3
  Class: CMSC 2204 – Mobile Device Programming
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Group 1 Github Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                //Title outside bar
                'Group 1 Application',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            //First Button
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  child: Text("Chevy\'s Page",
                      style: TextStyle(fontSize: 21, color: Colors.white)),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple, fixedSize: Size(200, 50)),
                  onPressed: (() => setState(() {
                        //Routes you to chevyspage.dart
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const chevyspage()),
                        );
                      }))),
            ),
            //Second button
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  child: Text("Dylan\'s Page",
                      style: TextStyle(fontSize: 21, color: Colors.white)),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, fixedSize: Size(200, 50)),
                  onPressed: (() => setState(() {
                        //Routes you to dylanspage.dart
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const dylanspage()),
                        );
                      }))),
            ),
            //Third button
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  child: Text(
                    "Anthony\'s Page",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black, fixedSize: Size(200, 50)),
                  onPressed: (() => setState(() {
                        //Routes you to anthonyspage.dart
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const anthonyspage()),
                        );
                      }))),
            ),
            //Fourth button
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  child: Text("Gustavo\'s Page",
                      style: TextStyle(fontSize: 21, color: Colors.white)),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red, fixedSize: Size(200, 50)),
                  onPressed: (() => setState(() {
                        //Routes you to gustavospage.dart
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const gustavospage()),
                        );
                      }))),
            ),
          ],
        ),
      ),
    );
  }
}
