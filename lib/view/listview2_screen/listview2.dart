import 'package:flutter/material.dart';
import 'package:truecaller_app/view/detail_screen/detail_screen.dart'; // Import the detail screen

class Listview2 extends StatelessWidget {
  const Listview2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      // Your existing data with added phone numbers
      {
        'name': 'John Doe',
        'imageUrl':
            'https://images.pexels.com/photos/6070067/pexels-photo-6070067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Incoming',
        'time': '10:30 AM',
        'phone': '+91 98765 43210',
      },
      {
        'name': 'Jane Smith',
        'imageUrl':
            'https://images.pexels.com/photos/5710971/pexels-photo-5710971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Outgoing',
        'time': '10:32 AM',
        'phone': '+91 87654 32109',
      },
      {
        'name': 'Bob Johnson',
        'imageUrl':
            'https://images.pexels.com/photos/28206889/pexels-photo-28206889/free-photo-of-a-pregnant-woman-in-a-green-sweater-is-smiling.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Outgoing',
        'time': '10:33 AM',
        'phone': '+91 76543 21098',
      },
      {
        'name': 'Alice Brown',
        'imageUrl':
            'https://images.pexels.com/photos/6069976/pexels-photo-6069976.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Incoming',
        'time': '10:35 AM',
        'phone': '+91 65432 10987',
      },
      {
        'name': 'Mike Davis',
        'imageUrl':
            'https://images.pexels.com/photos/6276708/pexels-photo-6276708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Incoming',
        'time': '10:36 AM',
        'phone': '+91 54321 09876',
      },
      {
        'name': 'Emily Taylor',
        'imageUrl':
            'https://images.pexels.com/photos/27634987/pexels-photo-27634987/free-photo-of-retratos-de-um-modelo-viajante-allanmarinsek.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Incoming',
        'time': '10:37 AM',
        'phone': '+91 43210 98765',
      },
      {
        'name': 'Kevin White',
        'imageUrl':
            'https://images.pexels.com/photos/16035908/pexels-photo-16035908/free-photo-of-latvia.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Incoming',
        'time': '10:38 AM',
        'phone': '+91 32109 87654',
      },
      {
        'name': 'Sarah Lee',
        'imageUrl':
            'https://images.pexels.com/photos/6284265/pexels-photo-6284265.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Outgoing',
        'time': '10:40 AM',
        'phone': '+91 21098 76543',
      },
      {
        'name': 'David Hall',
        'imageUrl':
            'https://images.pexels.com/photos/6693379/pexels-photo-6693379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Outgoing',
        'time': '10:41 AM',
        'phone': '+91 10987 65432',
      },
      {
        'name': 'Lisa Nguyen',
        'imageUrl':
            'https://images.pexels.com/photos/17307290/pexels-photo-17307290/free-photo-of-model-in-the-forest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'subtitle': 'Incoming',
        'time': '10:42 AM',
        'phone': '+91 09876 54321',
      },
    ];

    return ListView.builder(
      itemCount: dataList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        bool isIncoming = dataList[index]['subtitle'].contains('Incoming');
        bool isMissed = dataList[index]['subtitle'].contains('Missed');

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    name: dataList[index]['name'],
                    imageUrl: dataList[index]['imageUrl'],
                    subtitle: dataList[index]['subtitle'],
                    phone: dataList[index]['phone'], // Pass the phone number
                  ),
                ),
              );
            },
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(dataList[index]['imageUrl']),
                  radius: 25,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dataList[index]['name'],
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(
                            isIncoming
                                ? Icons.phone_in_talk
                                : (isMissed ? Icons.phone_missed : Icons.call),
                            color: isIncoming
                                ? Colors.white
                                : (isMissed ? Colors.red : Colors.grey),
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              dataList[index]['subtitle'],
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 16),
                            ),
                          ),
                          // Add the time text here
                          Text(
                            dataList[index]['time'],
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.phone, color: Colors.grey),
              ],
            ),
          ),
        );
      },
    );
  }
}
