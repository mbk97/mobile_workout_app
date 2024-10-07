import 'package:flutter/material.dart';
import 'package:workout_mobile_app/components/common/layout.dart';
import 'package:workout_mobile_app/screens/register.dart';
import 'package:workout_mobile_app/components/auth_scaffold.dart';
import 'package:workout_mobile_app/components/login/login.dart';
import 'package:workout_mobile_app/screens/welcome.dart';
import 'package:workout_mobile_app/components/common/common.dart';
import 'package:workout_mobile_app/utils/navigation.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  String? emailValue;
  String? passwordValue;

  final loginFormKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    void handleSubmit() {
      print("hello");
      navigateTo(context, const Layout());
    }

    return ReusableScaffold(
      body: SingleChildScrollView(
        child: Form(
          key: loginFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildBackButtonForLogin(context, () => const Welcome()),
                const SizedBox(height: 40),
                buildWelcomeText("Hi, Welcome Back", "Log in to your account"),
                const SizedBox(height: 40),
                buildCustomEmailTextField(emailValue),
                const SizedBox(height: 20),
                buildCustomPasswordTextField("Password", obscureText,
                    togglePasswordVisibility, passwordValue),
                buildCustomAuthButton("Login", loginFormKey, handleSubmit),
                buildRegisterLoginPrompt(
                  "Don't have an account?",
                  "Register Now",
                  context,
                  () => const Register(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
