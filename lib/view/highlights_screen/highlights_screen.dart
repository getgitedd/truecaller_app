import 'package:flutter/material.dart';

class HighlightsScreen extends StatelessWidget {
  final List<Map<String, String>> messages = [
    {
      'name': 'STATE BANK OF INDIA',
      'imageUrl':
          'https://www.freepnglogos.com/uploads/sbi-logo-png/sbi-logo-sbi-symbol-meaning-history-and-evolution-11.png',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '10:30 AM',
    },
    {
      'name': 'F1GGUU',
      'imageUrl':
          'https://tse1.mm.bing.net/th?id=OIP.pp2a-_Piv24eiiT1GXMsvgHaF7&pid=Api&P=0&h=220',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '11:15 AM',
    },
    {
      'name': 'FGUCR3',
      'imageUrl':
          'https://tse1.mm.bing.net/th?id=OIP.pp2a-_Piv24eiiT1GXMsvgHaF7&pid=Api&P=0&h=220',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '1:00 PM',
    },
    {
      'name': 'STATE BANK OF INDIA',
      'imageUrl':
          'https://www.freepnglogos.com/uploads/sbi-logo-png/sbi-logo-sbi-symbol-meaning-history-and-evolution-11.png',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '2:30 PM',
    },
    {
      'name': 'SOUTH INDIAN BANK',
      'imageUrl':
          'https://3.bp.blogspot.com/-T3tfzYfrthk/Tu3j1otFbUI/AAAAAAAADxc/J3x6dEoabkM/s1600/south%2Bindian%2Bbank%2Blogo.jpg',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '3:45 PM',
    },
    {
      'name': 'F1GGU2',
      'imageUrl':
          'https://tse1.mm.bing.net/th?id=OIP.pp2a-_Piv24eiiT1GXMsvgHaF7&pid=Api&P=0&h=220',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '4:00 PM',
    },
    {
      'name': 'STATE BANK OF INDIA',
      'imageUrl':
          'https://www.freepnglogos.com/uploads/sbi-logo-png/sbi-logo-sbi-symbol-meaning-history-and-evolution-11.png',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '5:15 PM',
    },
    {
      'name': 'F1GGUI',
      'imageUrl':
          'https://tse1.mm.bing.net/th?id=OIP.pp2a-_Piv24eiiT1GXMsvgHaF7&pid=Api&P=0&h=220',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '6:00 PM',
    },
    {
      'name': 'DREAM 11',
      'imageUrl':
          'https://www.brandinginasia.com/wp-content/uploads/2018/03/Dream11-Branding-in-Asia.jpg',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '7:30 PM',
    },
    {
      'name': 'STATE BANK OF INDIA',
      'imageUrl':
          'https://www.freepnglogos.com/uploads/sbi-logo-png/sbi-logo-sbi-symbol-meaning-history-and-evolution-11.png',
      'subtitle': 'TRANSACTION',
      'text': 'This transaction is hidden',
      'time': '8:45 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Container(
            margin: EdgeInsets.all(10), // Space between boxes
            padding: EdgeInsets.all(16), // Inner padding
            decoration: BoxDecoration(
              color: Colors.black, // Background color for each box
              borderRadius: BorderRadius.circular(10), // Rounded corners
              border: Border.all(color: Colors.grey), // Grey border
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(message['imageUrl']!),
                ),
                SizedBox(width: 16), // Space between avatar and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            message['name']!,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                                    .withOpacity(0.8)), // Reduced opacity
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                message['time']!,
                                style: TextStyle(
                                    color: Colors.white70
                                        .withOpacity(0.8)), // Reduced opacity
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Show',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.work,
                              color: Colors.blue, size: 18), // Blue icon
                          SizedBox(width: 8), // Space between icon and subtitle
                          Text(
                            message['subtitle']!,
                            style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.8)), // Reduced opacity
                          ),
                        ],
                      ),
                      SizedBox(height: 4), // Space between subtitle and text
                      Text(
                        message['text']!,
                        style: TextStyle(
                          color:
                              Colors.white.withOpacity(0.6), // Reduced opacity
                        ),
                      ),
                    ],
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

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: HighlightsScreen()),
    debugShowCheckedModeBanner: false,
  ));
}
