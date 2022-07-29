import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'MoneyBox.dart';

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
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Account"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("รายรับ", 50000, Colors.orange, 100),
              SizedBox(
                height: 8,
              ),
              MoneyBox("รายจ่าย", 30000, Colors.yellow, 100),
              SizedBox(
                height: 8,
              ),
              MoneyBox("คงเหลือ", 20000, Colors.green, 100),
            ],
          ),
        ));
  }
}
