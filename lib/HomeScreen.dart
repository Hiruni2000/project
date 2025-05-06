
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {"title": "Business Idea Generator", "image": "assets/flower1.jpg"},
    {"title": "Learning English", "image": "assets/flower2.jpg"},
    {"title": "Mental Health Section", "image": "assets/flower3.jpg"},
    {"title": "Self Discovery Module", "image": "assets/flower4.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: null, // Remove leading if using title with full row
        title: Row(
          children: [
            Icon(Icons.menu, color: Colors.black87),
            SizedBox(width: 8),

          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [

                CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  child: Icon(Icons.local_florist, color: Colors.blue),
                ),
                SizedBox(width: 10),


              ],
            ),
          ),
        ],

      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("HELLO JOHN DOE 👋",
                style: TextStyle(color: Colors.grey[600], fontSize: 16)),
            SizedBox(height: 6),
            Text(
              "How are things going\nwith you today?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 450,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30), // Spacing

                      // First line (separate)
                      Text(
                        "Be the change that you",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      // Second line with colored spans
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "wish to ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "see in the world",
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        "— MAHATMA GHANDI",
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ],

                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(Icons.favorite,color: Colors.blue,),
                ),
              ],
            ),


            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Saved Business Idea",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text("See All",
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey[700])),
              ],
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.orange),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("YOUR BUSINESS IDEA",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey[700])),
                      Text("FONIX software Solutions",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            Text("Main Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(category["image"]!),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    category["title"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.3),
                  ),
                );
              },
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Alerts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}