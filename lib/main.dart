import 'package:flutter/material.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_11_flutter_setup.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_12_widgets_basics.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_13_layout_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero to Hero Mobile Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Day13LayoutWidgets(),
    );
  }
}

