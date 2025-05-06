
import 'package:firstflutter/HomeScreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button and progress
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text('1/7'),
                ],
              ),

              SizedBox(height: 16),

              // Logo and text
              Center(
                child: Column(
                  children: [
                    Icon(Icons.ac_unit, size: 40, color: Colors.blue), // Placeholder for logo
                    SizedBox(height: 8),
                    Text("Welcome !", style: TextStyle(fontSize: 20)),
                    Text("Sign up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text("Please fill your information"),
                  ],
                ),
              ),

              SizedBox(height: 32),


              Center(
                child: SizedBox(
                  width: 400, //

                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildTextField("Your name", Icons.person, false, BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                        buildTextField("Email", Icons.email, false, BorderRadius.zero),
                        buildTextField("Phone Number", Icons.phone, false, BorderRadius.zero),
                        buildTextField(
                          "Password",
                          Icons.lock,
                          true,
                          BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )

              ,
              SizedBox(height: 102),

              // Next button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Next", style: TextStyle(fontSize: 18)),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }



  Widget buildTextField(
      String label,
      IconData icon,
      bool isPassword,
      BorderRadius borderRadius,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.grey.shade200,
          contentPadding: EdgeInsets.symmetric(
            vertical: 25.0, // 👈 Increase this value for more height
            horizontal: 10.0,
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }


}

