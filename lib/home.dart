// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int num1 = 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Centers 1"),
            const Text("Center 2"),
            const Text("Center 3"),
            Container(
              color: Colors.amber,
              child: TextButton(
                onPressed: () => {
                  num1++,
                  print("Hello Flutter" + num1.toString()),
                },
                child: const Text(
                  "Text Button",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.blue)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
