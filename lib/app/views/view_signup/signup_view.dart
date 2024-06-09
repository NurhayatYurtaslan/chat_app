import 'package:chat_app/core/widgets/button_widget.dart';
import 'package:chat_app/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  //for controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: height / 2.7,
                  child: Image.asset("assets/images/signup.jpg"),
                ),
                TextFieldInpute(
                  textEditingController: nameController,
                  hintText: "Enter your name",
                  icon: Icons.person,
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
                ButtonWidget(
                    onTab: () {}, text: "Sign Up", color: Colors.purpleAccent),
                SizedBox(
                  height: height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        " Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
