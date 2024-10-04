import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        'name': 'John Doe',
        'imageUrl':
            'https://images.pexels.com/photos/6070067/pexels-photo-6070067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "I Think you were at the party...",
        'time': '2:30 PM',
      },
      {
        'name': 'Jane Smith',
        'imageUrl':
            'https://images.pexels.com/photos/5710971/pexels-photo-5710971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Are you coming to the event?",
        'time': '3:15 PM',
      },
      {
        'name': 'Bob Johnson',
        'imageUrl':
            'https://images.pexels.com/photos/28206889/pexels-photo-28206889/free-photo-of-a-pregnant-woman-in-a-green-sweater-is-smiling.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Let's catch up soon!",
        'time': '4:00 PM',
      },
      {
        'name': 'Alice Brown',
        'imageUrl':
            'https://images.pexels.com/photos/6069976/pexels-photo-6069976.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Don't forget the meeting tomorrow.",
        'time': '5:45 PM',
      },
      {
        'name': 'Mike Davis',
        'imageUrl':
            'https://images.pexels.com/photos/6276708/pexels-photo-6276708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Can you send me the files?",
        'time': '6:20 PM',
      },
      {
        'name': 'Emily Taylor',
        'imageUrl':
            'https://images.pexels.com/photos/27634987/pexels-photo-27634987/free-photo-of-retratos-de-um-modelo-viajante-allanmarinsek.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "What's your plan for the weekend?",
        'time': '7:00 PM',
      },
      {
        'name': 'Kevin White',
        'imageUrl':
            'https://images.pexels.com/photos/16035908/pexels-photo-16035908/free-photo-of-latvia.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Loved your last post!",
        'time': '8:15 PM',
      },
      {
        'name': 'Sarah Lee',
        'imageUrl':
            'https://images.pexels.com/photos/6284265/pexels-photo-6284265.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "We should collaborate on a project.",
        'time': '9:30 PM',
      },
      {
        'name': 'David Hall',
        'imageUrl':
            'https://images.pexels.com/photos/6693379/pexels-photo-6693379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Have you seen the new updates?",
        'time': '10:00 PM',
      },
      {
        'name': 'Lisa Nguyen',
        'imageUrl':
            'https://images.pexels.com/photos/17307290/pexels-photo-17307290/free-photo-of-model-in-the-forest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'message': "Let's grab coffee this week!",
        'time': '11:15 PM',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black, // Set background to black

      body: ListView.builder(
        itemCount: dataList.length, // Use the length of dataList
        itemBuilder: (context, index) {
          final item = dataList[index]; // Get the current item

          return Container(
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      item['imageUrl']), // Use the image URL from the list
                  radius: 30,
                ),
                SizedBox(width: 10), // Spacing between avatar and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'], // Use the name from the list
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(height: 5), // Spacing between name and message
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              item['message'], // Use the message from the list
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                              overflow:
                                  TextOverflow.ellipsis, // Prevent overflow
                              maxLines: 1, // Limit to 1 line
                            ),
                          ),
                          SizedBox(width: 10), // Spacing before the time
                          Text(
                            item['time'], // Display the time
                            style:
                                TextStyle(fontSize: 14, color: Colors.white54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10), // Spacing before the small blue avatar
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
