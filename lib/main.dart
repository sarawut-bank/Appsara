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
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int number = 0; //การสร้าง state

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Menu"),
      ),
      body: Center(
        child: ListView(
          children: getData(20),
        ),
      ),
    );
  }

  //เตรียมข้อมูล
  List<Widget> getData(int count) {
    //ข้อมูล text widget
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text(
        "Menu ${i + 1}",
        style: TextStyle(fontSize: 20),
      ));
    }
    return data;
  }
}
