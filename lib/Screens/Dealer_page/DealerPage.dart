import 'package:flutter/material.dart';

class DealerPage extends StatelessWidget {
  final String dealerName;

  DealerPage({required this.dealerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dealerName),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Add some spacing at the top
          // Dealer Name
          Text(
            "Dealer: $dealerName",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40), // Space between dealer name and button
          // Scan QR Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adds horizontal padding
            child: ElevatedButton(
              onPressed: () {
                // Add Scan QR functionality here
                print("Scan QR clicked for $dealerName");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15), // Increases button height
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
              child: Text(
                "Scan QR",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Spacer(), // Pushes the submit button to the bottom
          // Submit Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0), // Add padding around the button
            child: ElevatedButton(
              onPressed: () {
                // Add Submit functionality here
                print("Submit clicked for $dealerName");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15), // Increases button height
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
