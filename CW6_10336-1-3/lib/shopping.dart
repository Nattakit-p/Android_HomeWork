import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  final String productName;
  final String customerName;
  const ShoppingPage({
    super.key,
    required this.productName,
    required this.customerName,
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Page"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_outlined),
              title: Text(productName),
              subtitle: Text(customerName),
            ),
          ],
        ),
      ),
    );
  }
}
