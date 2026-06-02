import 'package:flutter/material.dart';
import 'package:zero_to_hero_mobile_dev/flutter_phase/day_17_form_and_user_input/sign_up_screen.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  User newUser = User(name: "", email: "", password: "");
  User _updateUser(User updatedUser) {
    newUser = updatedUser;
    return updatedUser;
  }

  @override
  initState() {
    super.initState();
    nameController.text = widget.user.name;
    emailController.text = widget.user.email;
    newUser = widget.user;
  }

  @override
  Widget build(BuildContext context) {
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
                "Welcome ${newUser.name}!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text("Email: ${newUser.email}", style: TextStyle(fontSize: 18)),
              SizedBox(height: 15),

              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    // Edit profile logic here
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Edit Profile"),
                          content: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"),
                            ),
                            TextButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Update profile logic here
                                  setState(() {
                                    _updateUser(
                                      User(
                                        name: nameController.text.isEmpty
                                            ? widget.user.name
                                            : nameController.text,
                                        email: emailController.text.isEmpty
                                            ? widget.user.email
                                            : emailController.text,
                                        password: widget.user.password,
                                      ),
                                    );
                                  });
                                  Navigator.pop(context);
                                }
                              },
                              child: Text("Save"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Edit Profile"),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
