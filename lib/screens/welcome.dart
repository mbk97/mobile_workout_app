import 'dart:async'; // Import the dart:async library for using Timer
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    // _startAutoSlide(); // Start the timer for auto-slide
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing the widget
    super.dispose();
  }

  // void _startAutoSlide() {
  //   _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
  //     // Change this condition to check for 2 pages
  //     if (_currentPage < 1) {
  //       // Use 1 for two pages
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0; // Reset to the first page
  //     }
  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.easeInOut,
  //     );
  //     setState(() {}); // Update the UI
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
                      'assets/images/welcome_screen_img_two.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                      width: screenWidth,
                      height: screenHeight,
                    ),
                    // Text on top of image
                    const Center(
                      child: Text(
                        'Welcome to Page 1',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor:
                              Colors.black45, // To make text more readable
                        ),
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
                      'assets/images/welcome_screen_img_one.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                      width: screenWidth,
                      height: screenHeight,
                    ),
                    // Text on top of image
                    const Positioned(
                      bottom: 250.0,
                      left: 30,
                      right: 0,
                      child: Text(
                        'Explore Page 2',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Smooth Page Indicator
          Positioned(
            bottom: 16.0,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 2, // Update the count to 2 for two pages
                effect: const WormEffect(
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  spacing: 16.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
