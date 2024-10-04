import 'package:flutter/material.dart';
import 'package:workout_mobile_app/utils/navigation.dart';

Widget buildEmailTextField(dynamic emailValue) {
  return TextFormField(
    decoration: const InputDecoration(
      hintText: "Enter your Email",
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF3EC25B)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF3EC25B)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF3EC25B)),
      ),
      prefixIcon: Icon(Icons.email_outlined),
    ),
    style: const TextStyle(fontSize: 15),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    cursorColor: const Color(0XFF3EC25B),
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
  );
}

Widget buildBackButtonForLogin(
    BuildContext context, Widget Function() component) {
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
          navigateTo(
              context, component()); // Call the function to get the widget
        },
      ),
    ),
  );
}
