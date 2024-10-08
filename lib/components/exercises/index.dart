import 'package:flutter/material.dart';

Widget workoutProgress(double progress) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
    height: 80,
    decoration: const BoxDecoration(
      color: Colors.black,
      // color: Color(0XFF252525),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Workout Progress !",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              "14 Exercise left",
              style: TextStyle(
                fontSize: 12.8,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 50, // Adjusted size to fit the container
              width: 50,
              child: CircularProgressIndicator(
                value: progress, // Progress value (0.0 to 1.0)
                strokeWidth: 4, // Adjusted thickness
                backgroundColor: Colors.black, // Background color
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0XFF3EC25B)),
              ),
            ),
            Text(
              "${(progress * 100).toStringAsFixed(0)}%", // Percentage text
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget userDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset('assets/images/user.png'),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome back!!!"),
              Text("Mr Fugazi",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
            ],
          ),
        ],
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications_active,
          size: 30,
          color: Colors.black,
        ),
      ),
    ],
  );
}

Widget workoutCardDetails() {
  return Row(
    children: [
      // First card
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 180,
          decoration: const BoxDecoration(
            color: Color(0XFF3EC25B),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Completed \n Workouts",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "56",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 20), // Space between cards

      // Second card
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 180,
          decoration: const BoxDecoration(
            color: Colors.black,
            // color: Color(0XFF252525),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending \n Workouts",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.timer,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "256",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget categories() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Programs",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 18),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              width: 79,
              height: 58,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color: Color(0XFF3EC25B),
                  ),
                  Text(
                    "Strength",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              width: 79,
              height: 58,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color: Color(0XFF3EC25B),
                  ),
                  Text(
                    "Cardio",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              width: 79,
              height: 58,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color: Color(0XFF3EC25B),
                  ),
                  Text(
                    "Flexibility",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              width: 79,
              height: 58,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center_sharp,
                    color: Color(0XFF3EC25B),
                  ),
                  Text(
                    "Yoga",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    ],
  );
}
