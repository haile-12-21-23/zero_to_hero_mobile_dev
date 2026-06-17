import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zero_to_hero_mobile_dev/state_management_phase/day_30_authentication_ui/providers/auth_provider.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade500),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey,
                ),
                child: CircleAvatar(child: Icon(Icons.person, size: 110)),
              ),
              const SizedBox(height: 30),
              Text(
                "Welcome ${data.userData?['name']}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Email: ${data.userData?['email']}",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 15),

              Spacer(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
