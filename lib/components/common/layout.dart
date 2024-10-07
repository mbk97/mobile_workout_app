import 'package:flutter/material.dart';
import 'package:workout_mobile_app/screens/exercises.dart';
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
    Icons.fitness_center_sharp,
    Icons.diamond_outlined,
    Icons.calendar_month,
    Icons.access_time_outlined
  ];

  final List<Widget> pages = [
    const Exercises(),
    const Milestone(),
    const Pending(),
    const Schedule()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[selectedIndex],
        bottomNavigationBar: Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(navBarIcons.length, (index) {
              return GestureDetector(
                onTap: () {
                  onTapped(index);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.all(8),
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
                        : Colors.white,
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
