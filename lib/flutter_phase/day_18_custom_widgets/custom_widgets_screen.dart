import 'package:flutter/material.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_18_custom_widgets/custom_button.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_18_custom_widgets/custom_product_card.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_18_custom_widgets/custom_text_form_field.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_18_custom_widgets/custom_user_card.dart';

class CustomWidgetsScreen extends StatelessWidget {
  const CustomWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Custom Widgets",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomUserCard(),
              SizedBox(height: 15),
              CustomProductCard(),
              SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Email",
                onPressed: () {},
                controller: TextEditingController(),
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Password",
                onPressed: () {},
                controller: TextEditingController(),
                obscureText: true,
              ),
              SizedBox(height: 15),
              CustomButton(buttonTitle: " Login"),
              SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Name",
                onPressed: () {},
                controller: TextEditingController(),
              ),
              SizedBox(height: 15),

              CustomTextFormField(
                labelText: "Email",
                onPressed: () {},
                controller: TextEditingController(),
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Password",
                onPressed: () {},
                controller: TextEditingController(),
                obscureText: true,
              ),
              SizedBox(height: 15),

              CustomButton(buttonTitle: " Sign Up"),
            ],
          ),
        ),
      ),
    );
  }
}
