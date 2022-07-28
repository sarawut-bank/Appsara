import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//my widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Center(
          child: Text(
            "Sawaddeekub",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
