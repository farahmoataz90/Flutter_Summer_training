import 'dart:async';
import 'package:task3/loginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
//constructor
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late Timer _timer ;

  @override
  void initState()
  {
    
    super.initState();
    _startTimer();

  }

   void _startTimer() {
    _timer = Timer(const Duration(seconds: 4), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/images/Tsplash.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
