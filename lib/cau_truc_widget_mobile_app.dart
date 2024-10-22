import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      // Bo cuc
      appBar: AppBar(
        title: const Text("App title"),
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(child: Center(child: Text("Body Content"))),
    ),
  ));
}

