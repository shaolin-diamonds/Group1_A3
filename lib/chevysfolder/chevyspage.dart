import 'package:flutter/material.dart';
//Path to main.dart
import '../main.dart';

/*
  Author: Chevy Rios
  Date: 10/23/2022
  Title: Group Assignment 3
  Class: CMSC 2204 – Mobile Device Programming
*/

class chevyspage extends StatelessWidget {
  const chevyspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Chevy\'s Page',
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '1. I am Mexican American\n' +
                    '2. I love football\n' +
                    '3. MN Vikings are my favorite team',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  child: Text("GOTO Main",
                      style: TextStyle(fontSize: 21, color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
