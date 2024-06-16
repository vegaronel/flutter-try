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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text("Cat"), 
           const Text("Dog"), 
           const Text("Bird"),
            Container(
              color: Colors.amber,
              child: TextButton(onPressed: () => {
                print("Hello Flutter"),
              }, child: Text("Click here", style: TextStyle(color: Colors.black),),),
              )
            ],
          
        ),
      ),
    );
  }
}
