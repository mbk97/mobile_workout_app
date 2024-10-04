import 'package:flutter/material.dart';

Widget buildUsernameTextField() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const SizedBox(
      height: 20,
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: const Text(
        'Username', // Separate label text
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    TextFormField(
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        hintText: "Enter your Username",
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
            Icons.person,
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
          return "Please enter your username";
        }
        return null;
      },
      onSaved: (value) {
        // passwordValue = value;
      },
    ),
  ]);
}
