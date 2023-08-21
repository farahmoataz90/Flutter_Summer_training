import 'package:flutter/material.dart';
import 'Hori.dart';
import 'Vert.dart';

class mainPage extends StatefulWidget {
  //constructor
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int indexValue = 0;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/avatar6.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 246, 93, 11)),
                    ),
                    Text(
                      "Nada AbdelNaser",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/talabatLogo.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      //  border: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(0),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 246, 93, 11),
                    radius: 20,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 93, 11),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end, // Align children to the end (right) of the row
                children: [
                   Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25,),
                      const Text("Talabat market",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      ),
                     const Text("20 min delivery",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                     const  Text("3ayza t2eel 3ayza khafef negara2k? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      ),
                      const Text("negara2k ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: 125,
                        height: 25,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                        child: const Text(
                        "Shop Now",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 246, 93, 11),
                          fontSize: 12,
                          // backgroundColor: Color.fromARGB(255, 246, 93, 11),
                        ),
                      ),
                           ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30,),
                  Image.asset(
                    "assets/images/alo.png", // Replace with the actual image path
                    width: 100, // Adjust the width as needed
                    height: 100, // Adjust the height as needed
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight, // Fit the image within the specified dimensions
                  ),
                  
                ],
              ),
                    

            ),

            const SizedBox(height:30),
            const Text(
                        "Categories",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,         
                          fontWeight: FontWeight.bold,
                          
                        ),
                        textAlign: TextAlign.left,
                      ),
            const SizedBox(height:30),
            //category section 
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  hori(imagePath: "assets/images/pizza.jpg",),
                  hori(imagePath: "assets/images/vegies.jpg",),
                  hori(imagePath: "assets/images/car.jpg",),
                  hori(imagePath: "assets/images/pizza.jpg",),
                  hori(imagePath: "assets/images/vegies.jpg",),
                  hori(imagePath: "assets/images/car.jpg",),
                ],
              ),
              ),

            const SizedBox(height:30),

            const Text(
                        "Offers",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          
                        ),
                        textAlign: TextAlign.left,

                      ),
            const SizedBox(height:30),

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  vert(),
                  vert(),
                  vert(),
                  vert(),
                  vert(),
                  vert(),
                ],
              ),
              ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexValue,
        onTap: (index) {
          setState(() {
            indexValue = index;
          });
        },
        // Set the active and unselected icon colors
        selectedItemColor:
            const Color.fromARGB(255, 246, 93, 11), // Active color
        unselectedItemColor: Colors.grey, // Unselected color
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Orders",
            icon: Icon(Icons.receipt_long),
          ),
          BottomNavigationBarItem(
            label: "Vouchers",
            icon: Icon(Icons.discount_outlined),
          ),
          BottomNavigationBarItem(
            label: "Offers",
            icon: Icon(Icons.bookmark_add),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_pin),
          ),
        ],
      ),
    );
  }
}
