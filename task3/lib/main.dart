import 'package:flutter/material.dart';
import 'package:task3/splashScreen.dart';
import 'package:task3/loginScreen.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false, //to remove the debug banner
      home: SplashScreen(),
      routes: {
        LoginScreen.routeName:(context) => LoginScreen(),
      },
    ),
  );
}
