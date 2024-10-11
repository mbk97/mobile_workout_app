import 'package:flutter/material.dart';
import 'package:workout_mobile_app/screens/exercises.dart';
import 'package:workout_mobile_app/screens/homepage.dart';
import 'package:workout_mobile_app/screens/milestone.dart';
import 'package:workout_mobile_app/screens/pending.dart';
import 'package:workout_mobile_app/screens/schedule.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<IconData> navBarIcons = [
    Icons.home,
    Icons.fitness_center_sharp,
    Icons.diamond_outlined,
    Icons.calendar_month,
    Icons.access_time_outlined
  ];

  final List<Widget> pages = [
    const HomePage(),
    const Exercises(),
    const Milestone(),
    const Pending(),
    const Schedule()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          pages[selectedIndex],
          Positioned(
            bottom: 30, // Position from bottom
            left: 20, // Position from left
            right: 20, // Position from right
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(navBarIcons.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      onTapped(index);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedIndex == index
                            ? Colors.white.withOpacity(0.2)
                            : Colors.transparent,
                      ),
                      child: Icon(
                        navBarIcons[index],
                        size: selectedIndex == index ? 40 : 30,
                        color: selectedIndex == index
                            ? const Color.fromARGB(255, 9, 180, 98)
                            : Colors.black,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
