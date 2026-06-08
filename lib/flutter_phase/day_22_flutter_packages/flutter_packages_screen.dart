import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterPackagesScreen extends StatelessWidget {
  const FlutterPackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google Fonts",
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            shadows: [
              BoxShadow(
                color: Colors.blue.shade700,
                offset: Offset(1, 3),
                blurStyle: BlurStyle.inner,
              ),
              BoxShadow(
                color: Colors.green.shade700,
                offset: Offset(3, 5),
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to Flutter",
          style: GoogleFonts.montserrat(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
