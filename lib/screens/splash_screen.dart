import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/startup');
    });

    return Scaffold(
      backgroundColor: Colors.red, // Set the background color
      body: Stack(
        children: [
          // Top burger image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/burger_top.png',
              fit: BoxFit.cover,
              height: 200,
            ),
          ),

          // Bottom burger image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/burger_bottom.png',
              fit: BoxFit.cover,
              height: 200,
            ),
          ),

          // Center logo and text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Main central burger image
                Image.asset(
                  'assets/images/burger_main.png',
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  'EasyFood',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
