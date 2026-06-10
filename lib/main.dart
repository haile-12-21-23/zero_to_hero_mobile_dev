import 'package:flutter/material.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_11_flutter_setup.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_12_widgets_basics.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_13_layout_widgets.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_14_containers_and_styling.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_15_row_column_stack.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_16_navigation/home_scree.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_17_form_and_user_input/sign_up_screen.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_18_custom_widgets/custom_widgets_screen.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_19_list_view_and_grid_view/product_screen.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_20_image_and_assets/gallery_screen.dart';
// // import 'package:zero_to_hero_mobile_dev/flutter_phase/day_21_theme/theme_screen.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_22_flutter_packages/flutter_packages_screen.dart';
// import 'package:zero_to_hero_mobile_dev/flutter_phase/day_23_animation_basics/animation_screen.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_24_responsive_design/responsive_screen.dart';

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
      home: ResponsiveScreen(),
    );
  }
}

