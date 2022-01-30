import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 2;
  // String name = "Sanket";
  // double temp = 20.5;
  // num percentage = 91;
  // var anyvariable = "Sanket";
  // static const pi = 3.14;
  // final list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlutterPract"),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $day Course"),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
