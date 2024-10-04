import 'package:flutter/material.dart';

class AssistantScreen extends StatelessWidget {
  const AssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height *
                  0.7, // Occupy 70% of the screen height
              child: Image.asset(
                'asset/images/WhatsApp Image 2024-10-03 at 23.23.24.jpeg', // Your image path
                fit: BoxFit
                    .cover, // Adjust the image to cover the entire container
              ),
            ),
            SizedBox(height: 20), // Space between the image and the text
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check, color: Colors.blue),
                    SizedBox(width: 8), // Space between the icon and text
                    Text(
                      'Let your Assistant answer calls for you',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Space between the two sentences
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check, color: Colors.blue),
                    SizedBox(width: 8), // Space between the icon and text
                    Text(
                      'See who is calling and why',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Space between the text and the box
                Container(
                  width: 330, // Set a specific width for the box
                  height: 60, // Set a specific height for the box
                  padding: EdgeInsets.all(16), // Padding inside the box
                  decoration: BoxDecoration(
                    color: Colors.amber, // Golden color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: Center(
                    // Center the text vertically
                    child: Text(
                      'CLAIM SPECIAL OFFER 99 PER MONTH',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between the box and the text
                // Long small font size texts
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '3 days trail for new subscribers only',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 8), // Space between the texts
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Don\'t miss out on the chance to enhance your communication experience with our amazing assistant features!',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
