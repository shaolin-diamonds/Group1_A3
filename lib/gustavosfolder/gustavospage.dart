import 'package:flutter/material.dart';
//Path to main.dart
import '../main.dart';

/*
  Author: Gustavo Marin Borges
  Date: 10/23/2022
  Title: Group Assignment 3
  Class: CMSC 2204 – Mobile Device Programming
*/

class gustavospage extends StatelessWidget {
  //key that identifies the view
  const gustavospage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Gustavo\'s Page',
            style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                //Under title lable
                '1. I am venezuelan.\n' +
                    '2. I collect videogames.\n' +
                    '3. My favorite show is Shaman King.',
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
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
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
