import 'package:flutter/material.dart';
import 'package:workout_mobile_app/components/auth_scaffold.dart';
import 'package:workout_mobile_app/components/common/layout.dart';
import 'package:workout_mobile_app/components/register/register.dart';
import 'package:workout_mobile_app/screens/login.dart';
import 'package:workout_mobile_app/components/common/common.dart';
import 'package:workout_mobile_app/utils/navigation.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool obscureText = true;
  String? emailValue;
  String? passwordValue;
  String? usernameValue;

  final signupFormKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  // void handleSubmit() {
  //   print("hello sign up");
  // }

  @override
  Widget build(BuildContext context) {
    void handleSubmit() {
      print("hello");
      navigateTo(context, const Layout());
    }

    return ReusableScaffold(
      body: SingleChildScrollView(
        child: Form(
          key: signupFormKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                buildBackButton(context),
                const SizedBox(
                  height: 25,
                ),
                buildWelcomeText(
                    "Welcome! Create your account and get started.",
                    "Enter the following input to sign up"),
                const SizedBox(
                  height: 30,
                ),
                // buildEmailTextField(),
                buildCustomEmailTextField(emailValue),
                buildUsernameTextField(),
                const SizedBox(
                  height: 30,
                ),
                buildCustomPasswordTextField("Password", obscureText,
                    togglePasswordVisibility, passwordValue),
                buildCustomAuthButton("Sign up", signupFormKey, handleSubmit),
                buildRegisterLoginPrompt(
                  "Already have an account?",
                  "Login",
                  context,
                  () => const Login(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
