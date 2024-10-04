import 'package:flutter/material.dart';

class NonsavedScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      "name": "Alice Johnson",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Bob Smith",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/845457/pexels-photo-845457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Charlie Brown",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Diana Prince",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/2102416/pexels-photo-2102416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Eve Adams",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/307847/pexels-photo-307847.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Frank Castle",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/247304/pexels-photo-247304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Grace Hopper",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/439818/pexels-photo-439818.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Hank Pym",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/571169/pexels-photo-571169.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Ivy League",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/34514/spot-runs-start-la.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "name": "Jack Reacher",
      "subtitle": "Kerala,India",
      "image":
          "https://images.pexels.com/photos/41162/moon-landing-apollo-11-nasa-buzz-aldrin-41162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Set the background color to black
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(contact["image"]!),
              ),
              title: Text(
                contact["name"]!,
                style: TextStyle(
                    color: Colors.white), // Change text color to white
              ),
              subtitle: Text(
                contact["subtitle"]!,
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.transparent, // Make tile background transparent
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NonsavedScreen(),
    debugShowCheckedModeBanner: false, // Optional: Remove the debug banner
  ));
}
