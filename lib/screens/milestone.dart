import 'package:flutter/material.dart';

class Milestone extends StatefulWidget {
  const Milestone({super.key});

  @override
  State<Milestone> createState() => _MilestoneState();
}

class _MilestoneState extends State<Milestone> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Milestone page"),
    );
  }
}
