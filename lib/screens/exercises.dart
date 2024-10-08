import 'package:flutter/material.dart';
import 'package:workout_mobile_app/components/exercises/categories_card.dart';
import 'package:workout_mobile_app/components/exercises/index.dart';

class Exercises extends StatefulWidget {
  const Exercises({super.key});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  // Initialize progress to a value between 0.0 and 1.0
  double progress = 0.65; // Example progress value: 75%

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            userDetails(),
            const SizedBox(height: 30),
            workoutProgress(progress),
            const SizedBox(height: 50),
            workoutCardDetails(),
            const SizedBox(height: 50),
            categories()
          ],
        ),
      ),
    );
  }
}
