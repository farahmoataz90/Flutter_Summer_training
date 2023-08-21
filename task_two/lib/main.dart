import 'package:flutter/material.dart';
import 'package:task_two/Main_Body.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false, //to remove the debug banner 
    home: Scaffold(
      body:MainBody() ,
    ),
   ),
  );
   
}

