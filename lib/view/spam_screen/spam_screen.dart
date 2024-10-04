import 'package:flutter/material.dart';

class SpamScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "name": "Alice Johnson",
      "subtitle": "Congratulations! You've won a 1000 gift card!",
      "time": "10:30 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Bob Smith",
      "subtitle": "Act now! Limited time offer to increase your income!",
      "time": "9:45 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Charlie Brown",
      "subtitle": "You've been selected for a free trial!",
      "time": "8:15 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Diana Prince",
      "subtitle": "Click here to claim your reward!",
      "time": "11:00 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Eve Adams",
      "subtitle": "You've been approved for a special loan!",
      "time": "9:30 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Frank Castle",
      "subtitle": "This is not a scam! Trust us and sign up!",
      "time": "8:50 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Grace Hopper",
      "subtitle": "Special promotion! Click to learn more.",
      "time": "10:00 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Hank Pym",
      "subtitle": "You are eligible for an exclusive discount!",
      "time": "10:15 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Ivy League",
      "subtitle": "Don't miss out! Last chance to sign up!",
      "time": "8:45 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
    {
      "name": "Jack Reacher",
      "subtitle": "Claim your prize now! Limited slots available.",
      "time": "9:15 AM",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.7xMjSHpDVyzt8m6rkOR4ugHaHV&pid=Api&P=0&h=220",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item["image"]!),
            ),
            title: Text(
              item["name"]!,
              style: TextStyle(color: Colors.white, fontSize: 18), // Text color
            ),
            subtitle: Row(
              children: [
                Expanded(
                  child: Text(
                    '${item["subtitle"]!} · ${item["time"]!}',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16), // Subtitle color
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue, // Blue circle avatar
                  radius: 14, // Adjust the radius as needed
                  child: Text(
                    '1', // You can customize the text here
                    style: TextStyle(
                        color: Colors.white, fontSize: 12), // White text color
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
