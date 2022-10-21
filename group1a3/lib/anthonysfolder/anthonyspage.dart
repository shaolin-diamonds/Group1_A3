import 'package:flutter/material.dart';
//Path to main.dart
import '../main.dart';

/*
  Author: Anthony H-Wills
  Date: 10/20/2022
  Title: Group Assignment 3
  Class: CMSC 2204 – Mobile Device Programming
*/

class anthonyspage extends StatelessWidget {
  //key that identifies the view
  const anthonyspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anthony\'s Page', style: TextStyle(fontSize: 25)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                //Under title lable
                '1. I love to learn\n' +
                    '2. I do a lot of travelling\n' +
                    '3. My favorite TV show is Game of Thrones',
                //Font size
                style: TextStyle(fontSize: 21),
              ),
            ),
            //Button
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  //takes you back to main page
                  child: Text("GOTO Main",
                      style: TextStyle(fontSize: 21, color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    //Routes you to main.dart
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
