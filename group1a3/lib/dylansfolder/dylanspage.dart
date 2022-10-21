import 'package:flutter/material.dart';
import '../main.dart';

class dylanspage extends StatelessWidget {
  const dylanspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dylan's Page", style: TextStyle(fontSize: 25)),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "1. I like to build and paint model kits.\n" +
                      "2. My Favorite TV show Starwars: The Clone Wars\n" +
                      "3. I like Airsoft.",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyHomePage(title: 'main'))),
                    child: const Text("GOTO Main",
                        style: TextStyle(fontSize: 21, color: Colors.white))),
              )
            ]),
      ),
    );
  }
}
