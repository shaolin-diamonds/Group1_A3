import 'package:flutter/material.dart';
import '../main.dart';

class dylanspage extends StatelessWidget {
  const dylanspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dylan's Page"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            Padding(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                const Text(
                  "I like to build and paint modal kits.",
                  style: TextStyle(fontSize: 25.0),
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyHomePage(title: 'main'))),
                    child: const Text("GOTO MAIN",
                        style: TextStyle(fontSize: 21, color: Colors.black)))
              ],
            )),
      ),
    );
  }
}
