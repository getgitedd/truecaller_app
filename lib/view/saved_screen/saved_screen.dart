import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'John Doe',
      'imageUrl':
          'https://images.pexels.com/photos/6070067/pexels-photo-6070067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Jane Smith',
      'imageUrl':
          'https://images.pexels.com/photos/5710971/pexels-photo-5710971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Bob Johnson',
      'imageUrl':
          'https://images.pexels.com/photos/28206889/pexels-photo-28206889/free-photo-of-a-pregnant-woman-in-a-green-sweater-is-smiling.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Alice Brown',
      'imageUrl':
          'https://images.pexels.com/photos/6069976/pexels-photo-6069976.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Mike Davis',
      'imageUrl':
          'https://images.pexels.com/photos/6276708/pexels-photo-6276708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Emily Taylor',
      'imageUrl':
          'https://images.pexels.com/photos/27634987/pexels-photo-27634987/free-photo-of-retratos-de-um-modelo-viajante-allanmarinsek.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Kevin White',
      'imageUrl':
          'https://images.pexels.com/photos/16035908/pexels-photo-16035908/free-photo-of-latvia.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'Sarah Lee',
      'imageUrl':
          'https://images.pexels.com/photos/6284265/pexels-photo-6284265.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
    {
      'name': 'David Hall',
      'imageUrl':
          'https://images.pexels.com/photos/6693379/pexels-photo-6693379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile'
    },
    {
      'name': 'Lisa Nguyen',
      'imageUrl':
          'https://images.pexels.com/photos/17307290/pexels-photo-17307290/free-photo-of-model-in-the-forest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'subtitle': 'Mobile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.white), // Favorite icon
              onPressed: () {
                // Action for favorite icon
              },
            ),
            SizedBox(width: 8), // Space between icon and text
            Text(
              'Favorites',
              style: TextStyle(color: Colors.white), // AppBar text color
            ),
          ],
        ),
        backgroundColor: Colors.black, // Set AppBar background color
      ),
      body: Container(
        color: Colors.black, // Set the body background color to black
        child: SingleChildScrollView(
          // Make the entire screen scrollable
          child: Column(
            children: [
              SizedBox(height: 20), // Space above the circle
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Align items to the start
                children: [
                  _buildCircle(),
                  SizedBox(width: 20), // Space between the circle and the list
                ],
              ),
              SizedBox(height: 20), // Space below the circle
              ListView.builder(
                itemCount: contacts.length,
                physics:
                    NeverScrollableScrollPhysics(), // Disable scrolling for the ListView
                shrinkWrap:
                    true, // Allow ListView to take only necessary height
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(contact["imageUrl"]!), // Updated key
                      radius: 25,
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
                    tileColor:
                        Colors.transparent, // Make tile background transparent
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircle() {
    return Container(
      width: 90, // Diameter of the circle
      height: 90, // Diameter of the circle
      decoration: BoxDecoration(
        color: Colors.white, // Circle color
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '+', // Text inside the circle
          style: TextStyle(
            color: Colors.blue, // Text color
            fontSize: 40, // Text size
            fontWeight: FontWeight.bold, // Text weight
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SavedScreen(),
    debugShowCheckedModeBanner: false, // Optional: Remove the debug banner
  ));
}
