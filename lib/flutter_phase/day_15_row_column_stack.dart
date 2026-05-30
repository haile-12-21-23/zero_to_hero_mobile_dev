import 'package:flutter/material.dart';

class Day15RowColumnStack extends StatelessWidget {
  const Day15RowColumnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.blue.shade400),
              ),
              child: Stack(
                children: [
                  CircleAvatar(radius: 40, child: Icon(Icons.person)),
                  Positioned(
                    right: 0,
                    bottom: 0,

                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 12,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.edit, size: 14),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: Icon(Icons.people),
                title: Text(
                  "Users",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("250 Active Users"),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(
                  "Orders",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("120 Orders Today"),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text(
                  "Products",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("500 Available Products"),
              ),
            ),
            SizedBox(height: 20),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  "Add Orders",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
