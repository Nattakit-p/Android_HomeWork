import 'package:flutter/material.dart';
import 'food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  List<foodMenu> menu = [
    foodMenu("ข้าวผัด", "50"),
    foodMenu("ผัดกะเพรา", "60"),
    foodMenu("ต้มยำกุ้ง", "80"),
    foodMenu("ส้มตำ", "40"),
    foodMenu("ปีกไก่ทอด", "70"),
    foodMenu("แกงเขียวหวาน", "90"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("CW4"),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          foodMenu food = menu[index];
          return ListTile(
            title: Text('เมนูที่ ${index + 1} '),
            subtitle: Text(food.name + " ราคา " + food.price + " บาท"),
          );
        },
      ),
    );
  }

  /*
  List<Widget> getdata(int count) {
    List<Widget> data = [];
    for (var i = 1; i <= count; i++) {
      var menu = ListTile(
        title: Text('เมนูที่ $i '),
        subtitle: Text("ราคาของเมนูที่ $i"),
      );

      data.add(menu);
    }
    return data;
  }*/
}
