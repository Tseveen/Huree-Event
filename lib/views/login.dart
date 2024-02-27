import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huree_event_app/views/signup.dart';
import 'package:huree_event_app/components/my_button.dart';
import 'package:huree_event_app/components/my_textfield.dart';
import 'package:huree_event_app/components/square_tile.dart';
import 'package:huree_event_app/controller/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  void signUserIn() {}
  int selectedRadio = 0;

  void setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  bool isSignUp = false;

  late AuthController authController;

  @override
  void initState() {
    super.initState();
    authController = Get.put(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/logos/huree2.png',
                height: 70,
              ),
              const SizedBox(height: 50),
              Text(
                'Huree',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: emailController,
                hintText: 'Хэрэглэгчийн нэр',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: passwordController,
                hintText: 'Нууц үг',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Нууц үг мартсан',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      'Өөр хаягуудаар бүртгүүлэх',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/logos/google.png'),
                ],
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }));
                      },
                      child: Text(
                        'Шинээр бүртгүүлэх',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
