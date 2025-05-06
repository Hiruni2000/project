import 'package:firstflutter/signin_page.dart';
import 'package:firstflutter/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'HomeScreen.dart';
// import 'signup_page.dart';

class SignInPage1 extends StatelessWidget {
  const SignInPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),

                // Logo - replace with your actual logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
                  children: [
                    Icon(Icons.ac_unit, color: Colors.blue, size: 28), // Replace with your desired icon
                    SizedBox(width: 8), // Space between icon and text

                  ],
                ),

                const SizedBox(height: 10),
                // Welcome text
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10),
                // Sign in title
                const Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // Sign in title
                const Text(
                  "please fill your informationn",
                  style: TextStyle(
                    fontSize: 15,

                  ),
                ),
                const SizedBox(height: 40),

                Center(
                  child: SizedBox(
                    width: 425, // 👈 Adjust this width to your desired size
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            suffixIcon: const Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: const Icon(Icons.lock),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                const SizedBox(height: 10),
                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // Decreased horizontal length
                  child: SizedBox(
                    width: double.infinity, // Still allows full width within padding
                    height: 55, // Increased height (optional)
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Sign in now",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0), // Decrease padding to increase visual width
                  child: SizedBox(
                    width: double.infinity,
                    height: 60, // Optional: increase height for a bigger button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.account_box, color: Colors.black),
                          Text(
                            "Social Media login",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.black, size: 18),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                // Sign up prompt
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}


