import 'package:flutter/material.dart';

class CustomUserCard extends StatelessWidget {
  const CustomUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.person)),
          title: Text("John Doe"),
          subtitle: Text("Flutter Developer"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
