import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:core';

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
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExchagerate();
  }

  Future<void> getExchagerate() async {
    var url =
        "https://apigw1.bot.or.th/bot/public/Stat-ExchangeRate/v2/DAILY_AVG_EXG_RATE/";
    var response = await http.get(Uri.parse(url));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("อัตราการแลกเปลี่ยน"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
