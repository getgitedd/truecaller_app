import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        'name': 'Jio',
        'imageUrl':
            'https://tse3.mm.bing.net/th?id=OIP.01YjtHSa3kQUxcUx2H0DAgHaHu&pid=Api&P=0&h=220',
        'businessMessage': 'Recharge your for unlimited .. ',
        'time': '10:00 AM',
      },
      {
        'name': 'Bet365',
        'imageUrl':
            'https://at-madrid.es/wp-content/uploads/2018/06/Bet365-large-logo.jpg',
        'businessMessage': 'Finance Services',
        'time': '10:30 AM',
      },
      {
        'name': 'Angel One',
        'imageUrl':
            'https://tse2.mm.bing.net/th?id=OIP.dFk-omU-lyzOGZ2z4Me6QAHaHa&pid=Api&P=0&h=220',
        'businessMessage': 'Health & Wellness',
        'time': '11:00 AM',
      },
      {
        'name': 'Bajaj Finances',
        'imageUrl':
            'https://tse2.mm.bing.net/th?id=OIP.nkVUUN8kK0qjk8gfjbrgGwHaHa&pid=Api&P=0&h=220',
        'businessMessage': 'Food Delivery',
        'time': '11:30 AM',
      },
      {
        'name': 'SBI',
        'imageUrl':
            'https://www.freepnglogos.com/uploads/sbi-logo-png/sbi-logo-sbi-symbol-meaning-history-and-evolution-11.png',
        'businessMessage': 'Travel Agency',
        'time': '12:00 PM',
      },
      {
        'name': 'Rummy Circle',
        'imageUrl':
            'https://cdn.cricketprediction.com/site/assets/files/6861/rummy-circle-logo.jpg',
        'businessMessage': 'Real Estate',
        'time': '12:30 PM',
      },
      {
        'name': 'Paytm',
        'imageUrl': 'https://logowik.com/content/uploads/images/paytm6482.jpg',
        'businessMessage': 'Event Planning',
        'time': '1:00 PM',
      },
      {
        'name': 'Book My Show',
        'imageUrl':
            'https://getlogo.net/wp-content/uploads/2020/04/bookmyshow-logo-vector.png',
        'businessMessage': 'Digital Marketing',
        'time': '1:30 PM',
      },
      {
        'name': 'JioPay',
        'imageUrl':
            'https://logos-world.net/wp-content/uploads/2020/11/Jio-Logo.png',
        'businessMessage': 'Online Education',
        'time': '2:00 PM',
      },
      {
        'name': 'Reliance Smart',
        'imageUrl':
            'https://tse3.mm.bing.net/th?id=OIP.jOG5p0Gfp7adrMi_W-D0eAHaFj&pid=Api&P=0&h=220',
        'businessMessage': 'Consulting Firm',
        'time': '2:30 PM',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black, // Set background color
      body: Padding(
        padding: const EdgeInsets.only(
            bottom: 0.0, top: 0), // Adjust bottom padding as needed
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final item = dataList[index];

            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 2.0), // Reduced vertical padding
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item['imageUrl']),
                  radius: 30,
                ),
                title: Text(
                  item['name'],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                subtitle: Text(
                  item['businessMessage'],
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                trailing: Row(
                  mainAxisSize:
                      MainAxisSize.min, // Ensure row takes minimum space
                  children: [
                    Text(
                      item['time'], // Display the time
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 5), // Space between time and avatar
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 12, // Small circle avatar
                      child: Text(
                        '1', // Customize this text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
