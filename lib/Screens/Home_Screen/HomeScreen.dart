import 'package:flutter/material.dart';
import '../Dealer_page/DealerPage.dart';

class HomeScreen extends StatelessWidget {
  final String userType;
  final String sellerId;

  HomeScreen({required this.userType, required this.sellerId});

  @override
  Widget build(BuildContext context) {
    String appBarTitle = 'Seller Home';
    Color backgroundColor = Colors.green; // Seller-specific background color
    Widget bodyContent = SellerSpecificBody(sellerId: sellerId); // Seller-specific content

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Row(
          children: [
            IconButton(
              icon: Image.asset('assets/logo/logoqrcode.jpg', width: 35, height: 35),
              onPressed: () {
                print('App icon clicked');
              },
            ),
            Expanded(
              child: Center(
                child: Text(
                  sellerId,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                print('Logout clicked');
              },
            ),
          ],
        ),
      ),
      body: bodyContent,
    );
  }
}

class SellerSpecificBody extends StatelessWidget {
  final String sellerId;

  SellerSpecificBody({required this.sellerId});

  final List<String> dealers = [
    "Dealer 1",
    "Dealer 2",
    "Dealer 3",
    "Dealer 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          "Select Dealer",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: dealers.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  dealers[index],
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DealerPage(dealerName: dealers[index]),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
