import 'package:flutter/material.dart';

class Day13LayoutWidgets extends StatelessWidget {
  const Day13LayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Layout Widgets",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 64,
                  height: 64,

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade200),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.blue.shade700,
                  ),
                ),

                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Haile",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail),
                          const SizedBox(width: 8),
                          Text("haile@dev.com"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.work),
                          const SizedBox(width: 8),
                          Text("Flutter Developer"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
