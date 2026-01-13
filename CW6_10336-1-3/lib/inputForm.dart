import 'package:flutter/material.dart';
import 'shopping.dart';
import 'dart:ui';
import 'my_radio_button.dart';

//enum ProductTypeEnum { Downloadable, Deliverable }

class Inputform extends StatefulWidget {
  const Inputform({super.key});

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  var _productName;
  var _customerName;
  var _selectedChoice;
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();

  bool? _checkBox, _listTileCheckBox = false;

  final _productSizesList = ["Small", "Meduim", "Large", "Xlarge"];
  String? _seletedVal = "";

  _MyFormState() {
    _seletedVal = _productSizesList[0];
  }

  ProductTypeEnum? _productTypeEnum;

  void _updateText(val) {
    setState(() {
      _productName = val;
    });
  }

  void _updateCustomerName(val) {
    setState(() {
      _customerName = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("CW_6 - 6706022510336"))),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Input Text", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            MyTextField(
              fieldName: "Product Name",
              myController: _productController,
              myIcon: Icons.pin_drop_sharp,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            SizedBox(height: 20.0),
            MyTextField(
              fieldName: "Product Description",
              myController: _productDesController,
              myIcon: Icons.pin_drop_sharp,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            SizedBox(height: 20.0),

            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.deepPurple,
              tristate: true,
              value: _checkBox,
              onChanged: (val) {
                setState(() {
                  _checkBox = val;
                });
              },
            ),

            CheckboxListTile(
              value: _listTileCheckBox,
              title: Text("Top Product"),
              onChanged: (val) {
                setState(() {
                  _listTileCheckBox = val;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),

            DropdownButton(
              value: _seletedVal,
              items: _productSizesList
                  .map((e) => DropdownMenuItem(child: Text(e), value: e))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _seletedVal = val as String;
                });
              },
            ),
            DropdownButtonFormField(
              value: _seletedVal,
              items: _productSizesList
                  .map((e) => DropdownMenuItem(child: Text(e), value: e))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _seletedVal = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.deepPurple,
              ),
              dropdownColor: Colors.deepPurple.shade50,
              decoration: InputDecoration(
                labelText: "Product Sizes",
                prefixIcon: Icon(
                  Icons.accessibility_new_rounded,
                  color: Colors.deepPurple,
                ),
                border: OutlineInputBorder(),
              ),
            ),

            mybtn(),
            SizedBox(height: 20),
            Text("Product Name is :$_productName"),
            SizedBox(height: 20),
            Text("Customer Name is :$_customerName"),

            Radio(value: null, groupValue: null, onChanged: null),
            RadioListTile(value: null, groupValue: null, onChanged: null),

            /*ListTile(
              title: Text('1'),
              leading: Radio(
                value: 1,
                groupValue: _selectedChoice,
                onChanged: (value) {
                  setState(() {
                    _selectedChoice = 1;
                  });
                },
              ),
            ), */
            /*ListTile(
              title: Text('2'),
              leading: Radio(
                value: 2,
                groupValue: _selectedChoice,
                onChanged: (value) {
                  setState(() {
                    _selectedChoice = 2;
                  });
                },
              ),
            ), */
            /*ListTile(
              title: Text('3'),
              leading: Radio(
                value: 3,
                groupValue: _selectedChoice,
                onChanged: (value) {
                  setState(() {
                    _selectedChoice = 3;
                  });
                },
              ),
            ),*/
            RadioListTile<ProductTypeEnum>(
              title: Text(ProductTypeEnum.Deliverable.name),
              value: ProductTypeEnum.Deliverable,
              groupValue: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            RadioListTile<ProductTypeEnum>(
              title: Text(ProductTypeEnum.Downloadable.name),
              value: ProductTypeEnum.Downloadable,
              groupValue: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            MyRadioButton(
              title: ProductTypeEnum.Deliverable.name,
              value: ProductTypeEnum.Deliverable,
              selectedProductType: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            SizedBox(width: 5.0),
            MyRadioButton(
              title: ProductTypeEnum.Downloadable.name,
              value: ProductTypeEnum.Downloadable,
              selectedProductType: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  OutlinedButton mybtn() => OutlinedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ShoppingPage(
              productName: _productName,
              customerName: _customerName,
            );
          },
        ),
      );
    },
    child: Text("Submit"),
  );
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
