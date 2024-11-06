import 'package:flutter/material.dart';
import 'package:workout_mobile_app/components/common/common.dart';

class ViewExerciseUnderCategory extends StatefulWidget {
  final String exerciseCategoryName;

  const ViewExerciseUnderCategory({
    Key? key,
    required this.exerciseCategoryName,
  }) : super(key: key);

  @override
  State<ViewExerciseUnderCategory> createState() =>
      _ViewExerciseUnderCategoryState();
}

class _ViewExerciseUnderCategoryState extends State<ViewExerciseUnderCategory> {
  final List categories = [
    {
      "id": 1,
      "title": "Push Up",
      "description":
          "A bodyweight exercise that targets the chest, shoulders, and triceps."
    },
    {
      "id": 2,
      "title": "Squat",
      "description":
          "A lower-body exercise that targets the quadriceps, hamstrings, and glutes."
    },
    {
      "id": 3,
      "title": "Plank",
      "description":
          "An isometric core exercise that strengthens the abdominals and back."
    },
    {
      "id": 4,
      "title": "Running",
      "description": "A cardio exercise that improves cardiovascular endurance."
    },
    {
      "id": 5,
      "title": "Deadlift",
      "description":
          "A strength exercise that targets the entire posterior chain."
    },
    {
      "id": 6,
      "title": "Bicep Curl",
      "description": "An isolation exercise for strengthening the biceps."
    },
  ];

  final Map<int, bool> _isExpanded = {};

  // Empty list to hold added exercises
  final List<Map<String, dynamic>> addedExercises = [];

  // Function to handle adding or removing an exercise
  void handleAddRemoveExercise(Map<String, dynamic> exercise) {
    // Check if the exercise is already in the list
    final existingExercise =
        addedExercises.any((e) => e['id'] == exercise['id']);

    setState(() {
      if (existingExercise) {
        // If exercise exists, remove it
        addedExercises.removeWhere((e) => e['id'] == exercise['id']);
        print("Removed exercise: ${exercise['title']}");
      } else {
        // If exercise doesn't exist, add it
        addedExercises.add(exercise);
        print("Added exercise: ${exercise['title']}");
      }
    });

    print(addedExercises);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: buildBackButton(context),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Add an exercise to your workout",
                      style: TextStyle(fontSize: 15, color: Color(0XFF3EC25B)),
                    ),
                    Text(
                      widget.exerciseCategoryName,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
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
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final categoryId = category["id"];

                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              category["title"],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    _isExpanded[categoryId] == true
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded[categoryId] =
                                          _isExpanded[categoryId] ?? false;
                                      _isExpanded[categoryId] =
                                          !_isExpanded[categoryId]!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    handleAddRemoveExercise(category);
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0XFF3EC25B),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    height: 30,
                                    width: 30,
                                    child: Center(
                                      child: Icon(
                                        addedExercises.any(
                                                (e) => e['id'] == categoryId)
                                            ? Icons.remove
                                            : Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        if (_isExpanded[categoryId] == true)
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(category["description"]),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
