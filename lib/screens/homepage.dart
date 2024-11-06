import 'package:flutter/material.dart';
import 'package:workout_mobile_app/components/exercises/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initialize progress to a value between 0.0 and 1.0
  double progress = 0.65; // Example progress value: 65%

  final List history = [
    {
      "id": 1,
      "name": "Push ups",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "completed"
    },
    {
      "id": 2,
      "name": "Yoga",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "Pending"
    },
    {
      "id": 3,
      "name": "Squat",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "completed"
    },
    {
      "id": 4,
      "name": "Running",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "completed"
    },
    {
      "id": 5,
      "name": "Deadlift",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "Pending"
    },
    {
      "id": 6,
      "name": "Lunges",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "completed"
    },
    {
      "id": 7,
      "name": "Burpees",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "completed"
    },
    {
      "id": 8,
      "name": "Dumbbell Row",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "Pending"
    },
    {
      "id": 9,
      "name": "Shoulder Press",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "Pending"
    },
    {
      "id": 10,
      "name": "Side Plank",
      "desc": "This is the description",
      "date": "11-10-2024",
      "status": "Pending"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                const SizedBox(height: 70),
                userDetails(),
                const SizedBox(height: 30),
                workoutProgress(progress),
                const SizedBox(height: 30),
                workoutCardDetails(),
                const SizedBox(height: 30),
                categories(),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: workoutHistory(history),
          ),
        ],
      ),
    );
  }
}
