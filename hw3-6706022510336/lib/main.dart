import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "CW2", home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num = 0;
  String num1 = "";
  String num2 = "";
  String operator = "";
  String Showval = "0";
  double result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Showval, style: TextStyle(fontSize: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "7";
                        Showval = num1;
                      } else {
                        num2 += "7";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("7", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "8";
                        Showval = num1;
                      } else {
                        num2 += "8";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("8", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "9";
                        Showval = num1;
                      } else {
                        num2 += "9";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("9", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    operator = "+";
                  },
                  child: Text("+", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "4";
                        Showval = num1;
                      } else {
                        num2 += "4";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("4", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "5";
                        Showval = num1;
                      } else {
                        num2 += "5";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("5", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "6";
                        Showval = num1;
                      } else {
                        num2 += "6";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("6", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    operator = "-";
                  },
                  child: Text("-", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "1";
                        Showval = num1;
                      } else {
                        num2 += "1";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("1", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "2";
                        Showval = num1;
                      } else {
                        num2 += "2";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("2", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "3";
                        Showval = num1;
                      } else {
                        num2 += "3";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("3", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    operator = "*";
                  },
                  child: Text("*", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "0";
                        Showval = num1;
                      } else {
                        num2 += "0";
                        Showval = num2;
                      }
                    });
                  },
                  child: Text("0", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num1 = "";
                      num2 = "";
                      operator = "";
                      Showval = "0";
                    });
                  },
                  backgroundColor: Colors.deepPurple,
                  child: Text("C", style: TextStyle(fontSize: 30,
                  color: Colors.white)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (num1 == "" || num2 == "") return;
                      if (operator == "+") {
                        result = double.parse(num1) + double.parse(num2);
                      } else if (operator == "-") {
                        result = double.parse(num1) - double.parse(num2);
                      } else if (operator == "/") {
                        result = double.parse(num1) / double.parse(num2);
                      } else if (operator == "*") {
                        result = double.parse(num1) * double.parse(num2);
                      } else if (operator == "%") {
                        result =
                            (double.parse(num1) * double.parse(num2) / 100);
                      } else if (operator == "^") {
                        double base = double.parse(num1);
                        int exp = int.parse(num2);
                        double power = 1;
                        for (int i = 0; i < exp; i++) {
                          power *= base;
                        }
                        result = power;
                      }
                      Showval = result.toString();
                      num1 = result.toString();
                      num2 = "";
                      operator = "";
                    });
                  },
                  child: Text("=", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    operator = "/";
                  },
                  child: Text("/", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        if (num1.isNotEmpty) {
                          num1 = num1.substring(0, num1.length - 1);
                          Showval = num1.isEmpty ? "0" : num1;
                        }
                      } else {
                        if (num2.isNotEmpty) {
                          num2 = num2.substring(0, num2.length - 1);
                          Showval = num2.isEmpty ? "0" : num2;
                        }
                      }
                    });
                  },
                  backgroundColor: Colors.lightBlue,
                  child: Text("DEL", style: TextStyle(fontSize: 30,
                  color: Colors.white)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    operator = "%";
                  },
                  backgroundColor: Colors.deepOrange,
                  child: Text("%", style: TextStyle(fontSize: 30,
                  color: Colors.white)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    operator = "^";
                  },
                  backgroundColor: Colors.deepOrange,
                  child: Text("^", style: TextStyle(fontSize: 30,
                  color: Colors.white)),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: (){
                    operator = "✓";
                    setState(() {
                      if (num1.isEmpty) return;

                      double x = double.parse(num1);
                      double sqrt = 0;
                      for (int i = 1; i * i <= x; i++) {
                        sqrt = i.toDouble();
                      }
                      result = sqrt;
                      Showval = result.toString();
                      num1 = result.toString();
                      num2 = "";
                      operator = "";
                    });
                  },
                  backgroundColor: Colors.deepOrange,
                  child: Text("✓", style: TextStyle(fontSize: 30,
                  color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}