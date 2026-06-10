import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Responsive UI",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: size.width > 600 ? 3 : 2,
        padding: EdgeInsets.all(16),
        children: [
          DashboardCard(
            color: Colors.orangeAccent,
            title: "Users",
            value: "30",
          ),
          DashboardCard(color: Colors.blue, title: "Sales", value: "35"),
          DashboardCard(
            color: Colors.brown.shade400,
            title: "Orders",
            value: "40",
          ),
          DashboardCard(
            color: Colors.redAccent.shade400,
            title: "Stock-out",
            value: "63",
          ),
          DashboardCard(
            color: Colors.greenAccent.shade400,
            title: "Sock-in",
            value: "70",
          ),
          DashboardCard(
            color: Colors.purpleAccent,
            title: "Reports",
            value: "70",
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const DashboardCard({
    super.key,
    required this.title,
    required this.color,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.aboreto(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: GoogleFonts.aclonica(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
