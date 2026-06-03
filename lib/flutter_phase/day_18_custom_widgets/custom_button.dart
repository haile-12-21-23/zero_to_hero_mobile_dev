import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  const CustomButton({super.key, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text("$buttonTitle Clicked!"),
            ),
          );
        },
        child: Text(buttonTitle),
      ),
    );
  }
}
