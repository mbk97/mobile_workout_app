import 'package:flutter/material.dart';
import 'package:workout_mobile_app/utils/navigation.dart';

Widget buildWelcomeText(String textOne, String textTwo) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        textOne,
        style: const TextStyle(
            color: Color(0XFF111827),
            fontSize: 24,
            fontWeight: FontWeight.w700),
      ),
      const SizedBox(height: 10),
      Text(
        textTwo,
        style: const TextStyle(color: Color(0XFF6B7280), fontSize: 16),
      ),
    ],
  );
}

Widget buildRegisterLoginPrompt(String textOne, String textTwo,
    BuildContext context, Widget Function() component) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          // "Don't have an account?",
          style: const TextStyle(color: Color(0XFF6B7280)),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            navigateTo(context, component());
          },
          child: Text(
            textTwo,
            // "Register Now",
            style: const TextStyle(color: Color(0XFF3EC25B)),
          ),
        ),
      ],
    ),
  );
}

Widget buildBackButton(BuildContext context) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Color(0XFF3EC25B),
          size: 24.0,
        ),
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous page
        },
      ),
    ),
  );
}

Widget buildCustomAuthButton(String title, formKey, Function() handleSubmit) {
  return Container(
    margin: const EdgeInsets.only(top: 40),
    width: double.infinity,
    height: 56,
    child: ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          handleSubmit();
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF111827),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget buildCustomEmailTextField(dynamic emailValue) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Email', // Separate label text
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      TextFormField(
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          hintText: "Enter your Email",
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFF3EC25B),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFF3EC25B),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFF3EC25B),
            ),
          ),
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.email_outlined,
            ),
            onPressed: () {},
          ),
        ),
        style: const TextStyle(fontSize: 15),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: const Color(0XFF3EC25B),
        // obscureText: _obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Please enter a valid email address';
          }
          return null;
        },
        onSaved: (value) {
          emailValue = value;
        },
      ),
    ],
  );
}

Widget buildCustomPasswordTextField(String label, bool obscureText,
    Function() togglePasswordVisibility, dynamic passwordValue) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Password', // Separate label text
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your Password",
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF3EC25B)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF3EC25B)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF3EC25B)),
          ),
          prefixIcon: const Icon(Icons.key_outlined),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: togglePasswordVisibility,
          ),
        ),
        style: const TextStyle(fontSize: 15),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: const Color(0XFF3EC25B),
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          } else if (value.length < 8) {
            return 'Password is too short';
          } else if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) {
            return 'Password must contain at least one uppercase letter';
          } else if (!RegExp(r'^(?=.*\d)').hasMatch(value)) {
            return 'Password must contain at least one number';
          } else if (!RegExp(r'^(?=.*[!@#\$&*~])').hasMatch(value)) {
            return 'Password must contain at least one special character';
          }
          return null;
        },
        onSaved: (value) {
          passwordValue = value;
        },
      )
    ],
  );
}
