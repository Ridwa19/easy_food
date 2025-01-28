import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/startup_screen.dart';
import 'screens/login.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/food_details_screen.dart';
import 'screens/custom_burger_screen.dart';
import 'screens/payment_screen.dart';
import 'screens/success_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/support_screen.dart';

void main() => runApp(EasyFoodApp());

class EasyFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyFood',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/startup': (context) => StartUpScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/food-details': (context) => FoodDetailsScreen(),
        '/custom-burger': (context) => CustomBurgerScreen(),
        '/payment': (context) => PaymentScreen(),
        '/success': (context) => SuccessScreen(),
        '/profile': (context) => ProfileScreen(),
        '/support': (context) => SupportScreen(),
      },
    );
  }
}
