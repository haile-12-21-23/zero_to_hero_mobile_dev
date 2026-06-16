import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_to_hero_mobile_dev/state_management_phase/day_29_json_parsing/models/user.dart'
    show User;
import 'package:zero_to_hero_mobile_dev/state_management_phase/day_29_json_parsing/services/api_service.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<List<User>>(
        future: ApiService().fetchUsers(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == .waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapShot.hasData) {
            return Center(
              child: Text(
                "No User found.",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: snapShot.data?.length,
            itemBuilder: (_, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    snapShot.data![index].name[0],
                    style: GoogleFonts.cabin(),
                  ),
                ),
                title: Text(snapShot.data![index].name, maxLines: 1),
                subtitle: Text(snapShot.data![index].email, maxLines: 1),
                trailing: Text(snapShot.data![index].phone, maxLines: 1),
              );
            },
          );
        },
      ),
    );
  }
}
