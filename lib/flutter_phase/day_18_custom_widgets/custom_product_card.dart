import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.grey[300],
              child: Icon(Icons.image, size: 50, color: Colors.grey[600]),
            ),
            SizedBox(height: 10),
            Text(
              "Product Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "This is a description of the product. It provides details about the features and benefits.",
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text("Buy Now")),
          ],
        ),
      ),
    );
  }
}
