import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String display = "";

  void onPress(String value) {
    setState(() {
      if (value == "C") {
        display = "";
      } else {
        display += value; 
      }
    });
  }

  Widget buildButton(String text) {
    return ElevatedButton(
      onPressed: () => onPress(text),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyCalculator")),
      body: Column(
        children: [
          
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Text(
              display,
              style: const TextStyle(fontSize: 30),
            ),
          ),

          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                buildButton('7'), buildButton('8'), buildButton('9'), buildButton('/'),
                buildButton('4'), buildButton('5'), buildButton('6'), buildButton('*'),
                buildButton('1'), buildButton('2'), buildButton('3'), buildButton('-'),
                buildButton('C'), buildButton('0'), buildButton('%'), buildButton('+'),
                buildButton('=')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
