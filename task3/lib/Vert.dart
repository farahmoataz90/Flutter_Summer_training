import 'package:flutter/material.dart';

class vert extends StatelessWidget
{
  @override
  Widget build(context)
  {
    return 
    Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image:const DecorationImage(
                  image: AssetImage("assets/images/kfc.jpg"),
                  fit : BoxFit.cover,
                  ),
              borderRadius: BorderRadius.circular(20),
              ),
          ),
    );
          
  }
}