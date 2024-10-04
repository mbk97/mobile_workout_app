import 'dart:async'; // Import the dart:async library for using Timer
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workout_mobile_app/screens/login.dart';
import 'package:workout_mobile_app/utils/navigation.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer; // Declare a Timer

  @override
  void initState() {
    super.initState();
    _startAutoSlide(); // Start the timer for auto-slide
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing the widget
    super.dispose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      // Change this condition to check for 2 pages
      if (_currentPage < 1) {
        // Use 1 for two pages
        _currentPage++;
      } else {
        _currentPage = 0; // Reset to the first page
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {}); // Update the UI
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    precacheImage(
        const AssetImage('assets/images/welcome_screen_img_one.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/welcome_img_one.jpeg'), context);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: <Widget>[
              // Page 1
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Stack(
                  children: [
                    // Background Image
                    Image.asset(
                      'assets/images/welcome.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                      width: screenWidth,
                      height: screenHeight,
                    ),
                    // Text on top of image
                    Positioned(
                      bottom: 200.0,
                      left: 30,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jim Rohn",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Take care of your body. \n It’s the only place you have to live.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(80),
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 9, 180, 98),
                            ),
                            child: IconButton(
                              onPressed: () {
                                navigateTo(context, const Login());
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Page 2
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Stack(
                  children: [
                    // Background Image
                    Image.asset(
                      'assets/images/welcome_tw.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                      width: screenWidth,
                      height: screenHeight,
                    ),
                    // Text on top of image
                    Positioned(
                      bottom: 160.0,
                      left: 30,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Arnold Schwarzenegger",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'The pain you feel today will \n be the strength you feel tomorrow..',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(80),
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 9, 180, 98),
                            ),
                            child: IconButton(
                              onPressed: () {
                                navigateTo(context, const Login());
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Smooth Page Indicator
          Positioned(
            left: 40,
            right: 0,
            top: 470,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 2, // Update the count to 2 for two pages
              effect: const WormEffect(
                dotWidth: 10.0,
                dotHeight: 10.0,
                spacing: 16.0,
                dotColor: Colors.grey,
                activeDotColor: Color.fromARGB(255, 9, 180, 98),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
