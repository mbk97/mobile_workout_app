import 'package:flutter/material.dart';
import 'package:workout_mobile_app/components/common/common.dart';

class ViewExerciseUnderCategory extends StatefulWidget {
  final String
      exerciseCategoryName; // Specify dynamic as String for better typing
  const ViewExerciseUnderCategory(
      {super.key, required this.exerciseCategoryName});

  @override
  State<ViewExerciseUnderCategory> createState() =>
      _ViewExerciseUnderCategoryState();
}

class _ViewExerciseUnderCategoryState extends State<ViewExerciseUnderCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: buildBackButton(context)),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add an exercise to your workout",
                      style: TextStyle(fontSize: 15, color: Color(0XFF3EC25B)),
                    ),
                    Text(
                      "Exercise",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                // Add a search icon or another widget here if needed
                Container(
                  width: 80,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0XFF3EC25B),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
