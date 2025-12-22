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
  int counter = 0;
  int total = 0;
  String lastmenu = "";

  List<foodMenu> menu = [
    foodMenu("กะเพราหมู", "50", "assets/images/m1.jpg", "ผัด"),
    foodMenu("ผัดไทย", "60", "assets/images/m2.jpg", "ผัด"),
    foodMenu("ซูชิ", "80", "assets/images/m3.jpg", "อาหารญี่ปุ่น"),
    foodMenu("บาบิคิว", "70", "assets/images/m4.jpg", "เนื้อ"),
    foodMenu("ซาลาเปา", "10", "assets/images/m5.jpg", "อาหารทานเล่น"),
    foodMenu("กุ้งเผา", "120", "assets/images/m6.jpg", "ทะเล"),
    foodMenu("แกงมะระ", "40", "assets/images/m7.jpg", "แกง"),
    foodMenu("ปลาทอด", "45", "assets/images/m8.jpg", "ทอด"),
    foodMenu("แหนม", "30", "assets/images/m9.jpg", "อาหารอีสาน"),
    foodMenu("เบอร์เกอร์", "100", "assets/images/m10.jpg", "อาหารฟาสต์ฟู้ด"),
    foodMenu("ไก่ทอด", "20", "assets/images/m11.jpg", "ทอด"),
    foodMenu("หมูย่าง", "120", "assets/images/m12.jpg", "ย่าง"),
    foodMenu("แกงเขียวหวาน", "990", "assets/images/m13.jpg", "แกง"),
    foodMenu("ข้าวมันไก่", "67", "assets/images/m14.jpg", "ผัด"),
    foodMenu("ข้าวขาหมู", "200", "assets/images/m15.jpg", "ผัด"),
    foodMenu("ข้าวหมูแดง", "300", "assets/images/m16.jpg", "ผัด"),
    foodMenu("เนื้อย่าง", "400", "assets/images/m17.jpg", "ย่าง"),
    foodMenu("ลาบเป็ด", "450", "assets/images/m18.jpg", "อาหารอีสาน"),
    foodMenu("มัสมั่นไก่", "300", "assets/images/m19.jpg", "แกง"),
    foodMenu("ข้าวเปล่า", "1000", "assets/images/m20.jpg", "ข้าว"),
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
            leading: Image.asset(food.img),
            title: Text('เมนูที่ ${index + 1} ${food.name}'),
            subtitle: Text(
              food.name +
                  " ราคา " +
                  food.price +
                  " บาท" +
                  "  ประเภท" +
                  food.type,
            ),
            onTap: () {
              setState(() {
                counter++;
                total += int.parse(food.price);
                lastmenu = food.name;
              });

              AlertDialog alert = AlertDialog(
                title: Center(child: Text("เมนูที่คุณเลือก")),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("เมนูล่าสุด : $lastmenu"),
                    const SizedBox(height: 10),
                    Text("จำนวนครั้งที่เลือกเมนู : $counter อย่าง"),
                    const SizedBox(height: 10),
                    Text("ราคารวมทั้งหมด : $total บาท"),
                  ],
                ),
              );
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alert;
                },
              );
            },
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
