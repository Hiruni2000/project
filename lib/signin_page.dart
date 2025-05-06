import 'package:firstflutter/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔙 Back Button: "<" icon inside a circle
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.chevron_left, color: Colors.black, size: 28),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 10),

              const Center(
                child:Icon(Icons.ac_unit, color: Colors.blue, size: 28),
              ),
              const SizedBox(height: 30),

              const Center(
                child: Column(
                  children: [
                    Text(
                      "Welcome !",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Social media login",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 70),

              // ✅ Facebook Button
              socialButton(
                icon: FontAwesomeIcons.facebookF,
                text: "Facebook",
                iconBackground: Colors.blue,
                iconColor: Colors.white,
                textColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
              ),
              const SizedBox(height: 30),

              // ✅ Google Button
              socialButton(
                icon: FontAwesomeIcons.google,
                text: "Google",
                iconBackground: Colors.white,
                iconColor: Colors.black,
                textColor: Colors.black,
                backgroundColor: Colors.grey.shade200,
              ),
              const SizedBox(height: 30),

              // ✅ Apple Button
              socialButton(
                icon: FontAwesomeIcons.apple,
                text: "Apple",
                iconBackground: Colors.white,
                iconColor: Colors.black,
                textColor: Colors.black,
                backgroundColor: Colors.grey.shade300,
              ),

              const Spacer(),

              // 👉 Next Button
              ElevatedButton(
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
                  minimumSize: const Size.fromHeight(60),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  // 🔘 Custom Social Button
  Widget socialButton({
    required IconData icon,
    required String text,
    required Color iconBackground,
    required Color iconColor,
    required Color textColor,
    required Color backgroundColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: 95,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(70),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: iconBackground,
            radius: 22,
            child: Icon(icon, size: 20, color: iconColor),
          ),
          const SizedBox(width: 34),
          Text(
            " $text",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const Spacer(),
          Icon(Icons.radio_button_checked, color: textColor),
        ],
      ),
    );
  }
}

