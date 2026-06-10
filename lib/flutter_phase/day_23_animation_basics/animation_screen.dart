import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  bool isActive = true;
  bool isLeftAlign = true;
  bool isVisible = false;

  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 2).animate(controller);
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animations",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                  isActive = !isActive;
                  isLeftAlign = !isLeftAlign;
                });
              },
              child: AnimatedContainer(
                padding: EdgeInsets.all(6),

                duration: Duration(milliseconds: 400),
                width: isExpanded ? 240 : 160,
                height: 60,
                decoration: BoxDecoration(
                  color: isActive ? Colors.green : Colors.red,

                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: isLeftAlign
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Text(
                  isExpanded ? "Left Me" : "Right Me",
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: AnimatedContainer(
                padding: EdgeInsets.all(6),
                width: isVisible ? 240 : 160,
                height: 60,
                duration: Duration(milliseconds: 1000),
                decoration: BoxDecoration(
                  color: isVisible ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: isVisible
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Text(
                  isVisible ? "Hide Logo" : "Show Logo",
                  style: GoogleFonts.abrilFatface(),
                ),
              ),
            ),
            const SizedBox(height: 100),
            AnimatedBuilder(
              animation: scaleAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: scaleAnimation.value,
                  child: child,
                );
              },
              child: AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  curve: Curves.easeInOutQuart,
                  textColor: Colors.lightBlueAccent,
                  size: 100,
                  duration: Duration(milliseconds: 1000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
