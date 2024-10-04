import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String subtitle;
  final String phone;

  const DetailScreen({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.subtitle,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        title: Text(name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('More options clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                radius: 40,
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSquareIcon(Icons.call, Colors.blue, 'Call'),
                    _buildSquareIcon(Icons.message, Colors.blue, 'Message'),
                    _buildSquareIcon(Icons.edit, Colors.blue, 'Edit'),
                    _buildSquareIcon(Icons.block, Colors.blue, 'Block'),
                    _buildSquareIcon(Icons.payment, Colors.blue, 'Pay'),
                  ],
                ),
              ),
              SizedBox(height: 20), // Add some spacing

              // Phone information box with incoming call and message icons
              _buildInfoBox(Icons.call, phone, 'BSNL', showIcons: true),
              SizedBox(height: 20), // Add some spacing

              // First additional info box with location icon, without icons
              _buildInfoBox(Icons.location_on, 'More info available',
                  'Upgrade to premium to view more',
                  showIcons: false),
              SizedBox(height: 1), // Add some spacing

              // Second additional info box with email icon, without icons
              _buildInfoBox(Icons.email, 'Email available',
                  'Upgrade to premium to view more',
                  showIcons: false),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBox(IconData icon, String phone, String label,
      {bool showIcons = false}) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Space between elements
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(icon,
                      color: Colors.white), // Icon passed as a parameter
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      phone, // Display the phone number
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Opacity(
                      opacity: 0.6, // Set the opacity for the text
                      child: Text(
                        label, // Display the label for the box
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (showIcons) // Display icons only if showIcons is true
              Row(
                children: [
                  Icon(Icons.phone_in_talk,
                      color: Colors.white), // Incoming call icon
                  SizedBox(width: 22), // Spacing between icons
                  Icon(Icons.message, color: Colors.white), // Message icon
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareIcon(IconData icon, Color color, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color, size: 22),
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
