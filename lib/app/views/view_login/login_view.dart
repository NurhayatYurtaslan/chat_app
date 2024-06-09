import 'package:chat_app/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //for controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: height / 2.7,
              child: Image.asset("assets/images/login.jpg"),
            ),
            TextFieldInpute(
              textEditingController: emailController,
              hintText: "Enter your email",
              icon: Icons.email,
            ),
            TextFieldInpute(
              textEditingController: passwordController,
              hintText: "Enter your password",
              icon: Icons.lock,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
