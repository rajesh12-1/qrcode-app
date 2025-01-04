import 'package:flutter/material.dart';

import '../Login_Screen/loginScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose User Type'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOptionButton(context, 'Seller', Colors.blue),
            buildOptionButton(context, 'Dealer', Colors.green),
            buildOptionButton(context, 'Godown', Colors.orange),
            buildOptionButton(context, 'Manufacturer', Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget buildOptionButton(BuildContext context, String userType, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          backgroundColor: color,
          minimumSize: Size(double.infinity, 50),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(userType: userType),
            ),
          );
        },
        child: Text(
          userType,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
