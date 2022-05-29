import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class employee extends StatelessWidget {
  const employee({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        child: Column(children: [
          Container(
              height: 5, width: 300, color: Color.fromARGB(255, 60, 141, 188)),
          Container(
              height: 150,
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Employee Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Employee Name :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Employee ID:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ),
                ],
              ))
        ]));
  }
}
