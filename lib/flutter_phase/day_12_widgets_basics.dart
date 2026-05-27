import 'package:flutter/material.dart';

class Day12WidgetsBasics extends StatelessWidget {
  const Day12WidgetsBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      // Arranges widgets vertically.
      body: Column(
        //Aligns widgets along the main axis.
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Used for:
          // Styling
          // Spacing
          //Background colors
          //Width & height
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              border: Border.all(width: 2, color: Colors.blue.shade400),
              borderRadius: BorderRadius.circular(100), // make it circular
            ),
            //Displays built-in Material icons.
            child: Icon(Icons.person, size: 100),
          ),
          const SizedBox(height: 12),
          // Displays text on the screen.
          Text(
            "Haile",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          // Arranges widgets horizontally.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 12),
              //Displays built-in Material icons.
              Icon(Icons.developer_mode_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
