import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:huree_event_app/components/my_button.dart';
import 'package:huree_event_app/components/my_textfield.dart';
import 'package:huree_event_app/components/square_tile.dart';
import 'package:huree_event_app/controller/auth_controller.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //text editing controllers
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
    // TODO: implement initState
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

              //logo
              Image.asset(
                'assets/logos/huree2.png',
                height: 70,
              ),

              //text
              SizedBox(height: 50),

              Text(
                'Huree',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(height: 25),

              //username textfield
              MyTextfield(
                controller: emailController,
                hintText: 'Хэрэглэгчийн нэр',
                obscureText: false,
              ),

              const SizedBox(height: 25),

              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Нууц үг',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Нууц үг дахин хийнэ үү?',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              //sign button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 10),
              // continue with
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
                children: [SquareTile(imagePath: 'assets/logos/google.png')],
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Шинээр бүртгүүлэх',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
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
