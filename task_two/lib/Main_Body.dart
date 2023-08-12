import 'package:flutter/material.dart';

class MainBody extends StatelessWidget
{
  
  @override
  Widget build(context)
  {
    return Container(
      decoration:const BoxDecoration(
        color: Color.fromARGB(166, 191, 160, 243),
      ),
      child:  Center(

       child: Container(
        height: 1000,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),

          ),

        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //first the image 
            Image.asset('assets/images/task2_image.png',
            width: 200,
            ),

            //create padding between the image and the tex
            const SizedBox(
              height: 20,
            ),

            //then the text part
            const Text(
              'Safe Payment, Happy You!' ,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20.0,
              ),
            ),

            const SizedBox(
              height: 15,
            ),

           const Text(
            'Create a fresh virtual credit card for all your',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w300,
            ),
           ),
            const SizedBox(
              height: 7,
            ),
             const Text(
            'shopping and banking needs',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w300,
            ),
           ),
            const SizedBox(
              height: 60,
            ),
           //now the button
          Container(
           height: 50,
           width: 50,
           decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(10),
           ),
           child:const Center(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              weight: 900,
              size: 26,
            ),
            
           ),
          ),
          ],
        ),
      ),
      ),
    );
  }
}