import 'package:flutter/material.dart';
import 'package:workout_mobile_app/screens/view_exercise_under_category.dart';
import 'package:workout_mobile_app/utils/navigation.dart';

class Exercises extends StatefulWidget {
  const Exercises({super.key});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  final List exerciseList = [
    {
      "name": "Chest",
      "image": "assets/images/chest.jpg",
      "page": "",
      "category": "Upper Body"
    },
    {
      "name": "Legs",
      "image": "assets/images/legs.jpg",
      "page": "",
      "category": "Lower Body"
    },
    {
      "name": "Core",
      "image": "assets/images/core.jpg",
      "page": "",
      "category": "Cardio"
    },
    {
      "name": "Back",
      "image": "assets/images/back.jpg",
      "page": "",
      "category": "Strength"
    },
    {
      "name": "Arms",
      "image": "assets/images/arms.jpg",
      "page": "",
      "category": "Strength"
    },
    {
      "name": "Shoulders",
      "image": "assets/images/shoulders.jpg",
      "page": "",
      "category": "Upper Body"
    },
    {
      "name": "Full Body",
      "image": "assets/images/full_body.jpg",
      "page": "",
      "category": "Strength"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "View exercises under each muscle group",
                      style: TextStyle(fontSize: 15, color: Color(0XFF3EC25B)),
                    ),
                    Text(
                      "Workout",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                itemCount: exerciseList.length,
                itemBuilder: (context, index) {
                  var item = exerciseList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              item['image']!, // Dynamic image from list
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black
                                  .withOpacity(0.5), // Black overlay
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['category']!, // Dynamic category
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Color(0XFF3EC25B),
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  item['name']!, // Dynamic name
                                  style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 20,
                            child: GestureDetector(
                              onTap: () {
                                navigateTo(
                                    context,
                                    ViewExerciseUnderCategory(
                                        exerciseCategoryName: item['name']));
                              },
                              child: Container(
                                width: 60,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: const Color(0XFF3EC25B),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const Center(
                                  child: Text(
                                    "View",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
