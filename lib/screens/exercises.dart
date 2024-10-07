import 'package:flutter/material.dart';

class Exercises extends StatefulWidget {
  const Exercises({super.key});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            // const Text(
            //   "Exercises",
            //   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            // ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/images/user.png'),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back!!!"),
                    Text("Mr Fugazi",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
