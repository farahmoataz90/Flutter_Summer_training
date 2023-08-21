import 'package:flutter/material.dart';

class hori extends StatelessWidget
{
   hori({required this.imagePath,super.key});

   final String imagePath;


  @override
  Widget build(context)
  {
    return 
    Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 500,
            width: 190,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit : BoxFit.cover,
                  ),
                borderRadius: BorderRadius.circular(20),
                
              ),
          ),
    );
          
  }
}