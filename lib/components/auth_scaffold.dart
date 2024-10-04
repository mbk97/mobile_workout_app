import 'package:flutter/material.dart';

class ReusableScaffold extends StatelessWidget {
  final Widget body;

  const ReusableScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
