import 'package:flutter/material.dart';

class ProductCardGridView extends StatelessWidget {
  final String productName;
  final IconData productIcon;
  final String description;
  const ProductCardGridView({
    super.key,
    required this.productName,
    required this.productIcon,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(productIcon, size: 50),
            SizedBox(height: 10),
            Text(
              productName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Expanded(
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,

                      behavior: SnackBarBehavior.floating,
                      content: Text(
                        "$productName Added to your cart.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
                label: Text("Add Cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCardListView extends StatelessWidget {
  final String productName;
  final IconData icon;
  final String description;
  const ProductCardListView({
    super.key,
    required this.productName,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 50),
        title: Text(
          productName,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: ElevatedButton.icon(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.green),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,

                behavior: SnackBarBehavior.floating,
                content: Text(
                  "$productName Added to your cart.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
          label: Text("Add cart"),
        ),
      ),
    );
  }
}
