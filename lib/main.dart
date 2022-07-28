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

  @override
  Widget build(BuildContext context) {
    //ข้อมูล text widget
    List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("รายการที่ ${i + 1}"));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Program"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }
}
