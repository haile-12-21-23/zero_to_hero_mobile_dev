import 'package:flutter/material.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_19_list_view_and_grid_view/product_card.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isGridView = false;
  final List<Map<String, dynamic>> products = [
    {
      "name": "Laptop",
      "icon": Icons.laptop,
      "description": "The latest Apple M5. ",
    },
    {
      "name": "iPhone 15",
      "icon": Icons.smartphone,
      "description": "iphone 17 Pro.",
    },
    {
      "name": "HeadPhone",
      "icon": Icons.headphones,
      "description": "Latest sound proof.",
    },
    {
      "name": "Keyboard",
      "icon": Icons.keyboard,
      "description": " Smart bluetooth wireless.",
    },
    {
      "name": "Mouse",
      "icon": Icons.mouse,
      "description": "wireless bluetooth mouse.",
    },
    {
      "name": "Monitor",
      "icon": Icons.monitor,
      "description": "The 4k display monitor. ",
    },
    {
      "name": "iPad Air ",
      "icon": Icons.tablet,
      "description": "Portable best iPad. ",
    },
    {
      "name": "Watch",
      "icon": Icons.watch,
      "description": "Apple Watch Series 9. ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: isGridView
          ? GridView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (_, index) {
                final product = products[index];
                return ProductCardGridView(
                  productName: product["name"],
                  productIcon: product["icon"],
                  description: product["description"],
                );
              },
            )
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: products.length,
              itemBuilder: (_, index) {
                final product = products[index];
                return ProductCardListView(
                  productName: product['name'],
                  icon: product['icon'],
                  description: product['description'],
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            isGridView = !isGridView;
          });
        },
        label: Text("${'View in'} ${isGridView ? 'List' : 'Gird'}"),
      ),
    );
  }
}
