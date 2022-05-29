import 'package:flutter/material.dart';
import 'employee.dart';
import 'form.dart';

void main() {
  runApp(MaterialApp(
    title: "Janitor-Feed",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 128, 185),
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image(
            image: AssetImage("vitlogo.png"),
            width: 200,
            height: 50,
            alignment: Alignment.bottomLeft,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Janitor-Feed",
              style: TextStyle(
                  fontFamily: 'Times',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Container(width: 300, height: 20),
                employee(),
                Container(width: 300, height: 20),
                form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
