import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("ข้าวไข่เจียว", "35", "assets/images/1.jpg"),
    FoodMenu("ข้าวผัด", "40", "assets/images/2.jpg"),
    FoodMenu("ผัดกะเพรา", "40", "assets/images/3.jpg")
  ];

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose Menu"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา " + food.price + "บาท",
                    style: TextStyle(fontSize: 20)),
                onTap: () {
                  print("Choose Name Menu:" + food.name);
                },
              );
            }));
  }
}
