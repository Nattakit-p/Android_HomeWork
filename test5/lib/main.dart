import 'package:flutter/material.dart';
import 'dart:ui';
import 'MoneyBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Container")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 120,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputDecoratorExample(),
            ),
            Moneybox("ยอดคงเหลือ", 20000, 150, Colors.green),
            Moneybox("รายรับ", 5000, 120, Colors.orange),
            Moneybox("รายจ่าย", 3000, 100, Colors.red),
            Moneybox("ค้างจ่าย", 40000, 100, Colors.blueAccent.shade700),
            Container(
              child: TextButton(
                child: Text(
                  "Summit",
                  style: TextStyle(fontSize: 30, color: Colors.lightBlue),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputDecoratorExample extends StatelessWidget {
  const InputDecoratorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Account Name',
        labelStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
          final Color color = states.contains(WidgetState.error)
              ? Theme.of(context).colorScheme.error
              : Colors.orange;
          return TextStyle(color: color, letterSpacing: 1.3);
        }),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Enter name';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
