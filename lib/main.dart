import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Text("Hello Bro"),
    ),
    theme: ThemeData(primarySwatch: Colors.yellow),
  );
  runApp(app);
}
