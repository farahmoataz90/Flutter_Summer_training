import 'package:flutter/material.dart';
import 'package:task3/MainPage.dart';

class LoginScreen extends StatefulWidget {
  //constructor
  LoginScreen({super.key});

  static const String routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromkey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Image.asset("assets/images/talabatLogo.jpg"),
            const SizedBox(
              child: Text(
                "Sign up for Free",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            Form(
              key: fromkey,
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Name";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: const Icon(Icons.person,
                          color: Color.fromARGB(255, 246, 93, 11)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Email";
                      }
                      if (!value.contains("@")) {
                        return "enter valid mail";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email,
                          color: Color.fromARGB(255, 246, 93, 11)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Password";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock,
                          color: Color.fromARGB(255, 246, 93, 11)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                      const Text(
                        "Remember Me",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (fromkey.currentState!.validate()) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mainPage()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 246, 93, 11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          // backgroundColor: Color.fromARGB(255, 246, 93, 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
