import 'package:flutter/material.dart';

class Day11FlutterSetup extends StatelessWidget {
  const Day11FlutterSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My First Flutter App')),
      body: Center(child: Text("Hello Flutter!")),
    );
  }
}
