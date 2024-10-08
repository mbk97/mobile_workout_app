import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<bool> isSelected = [
    false,
    false,
    false,
    false
  ]; // to manage the tap state for each card

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected[0] = !isSelected[0];
              });
            },
            child: Container(
              width: 79,
              height: 58,
              decoration: BoxDecoration(
                color: isSelected[0] ? Colors.green : Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color:
                        isSelected[0] ? Colors.black : const Color(0XFF3EC25B),
                  ),
                  Text(
                    "Strength",
                    style: TextStyle(
                      color: isSelected[0] ? Colors.black : Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected[1] = !isSelected[1];
              });
            },
            child: Container(
              width: 79,
              height: 58,
              decoration: BoxDecoration(
                color: isSelected[1] ? Colors.green : Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color:
                        isSelected[1] ? Colors.black : const Color(0XFF3EC25B),
                  ),
                  Text(
                    "Cardio",
                    style: TextStyle(
                      color: isSelected[1] ? Colors.black : Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected[2] = !isSelected[2];
              });
            },
            child: Container(
              width: 79,
              height: 58,
              decoration: BoxDecoration(
                color: isSelected[2] ? Colors.green : Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color:
                        isSelected[2] ? Colors.black : const Color(0XFF3EC25B),
                  ),
                  Text(
                    "Flexibility",
                    style: TextStyle(
                      color: isSelected[2] ? Colors.black : Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected[3] = !isSelected[3];
              });
            },
            child: Container(
              width: 79,
              height: 58,
              decoration: BoxDecoration(
                color: isSelected[3] ? Colors.green : Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color:
                        isSelected[3] ? Colors.black : const Color(0XFF3EC25B),
                  ),
                  Text(
                    "Yoga",
                    style: TextStyle(
                      color: isSelected[3] ? Colors.black : Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
