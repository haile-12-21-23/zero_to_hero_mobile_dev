import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_to_hero_mobile_dev/state_management_phase/day_30_authentication_ui/providers/auth_provider.dart';
import 'package:zero_to_hero_mobile_dev/state_management_phase/day_30_authentication_ui/screens/login_screen.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ref.watch(authProvider);
    ref.listen<AuthState>(authProvider, (prev, next) {
      print("Status:${prev?.status}");
      print("Status:${next.status}");
      if (next.status == AuthStatus.registered) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      } else if (next.status == AuthStatus.registerFailure) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('data')));
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required field.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required field.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required field.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                      Size(double.infinity, 48),
                    ),

                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }

                    print("Logging.......");
                    final Map<String, dynamic> loginRequest = {
                      'name': nameController.text.trim(),
                      'email': emailController.text.trim(),
                      'password': passwordController.text.trim(),
                    };

                    ref.read(authProvider.notifier).register(loginRequest);
                  },
                  child: Text("Login"),
                ),
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Text("Don't have an account?"),
                  // SizedBox(width: 4),
                  TextButton(onPressed: () {}, child: Text("Register")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
