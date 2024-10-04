import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
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

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        height: 110,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(dataList[index]['imageUrl']),
                    radius: 25,
                  ),
                  Text(
                    dataList[index]['name'],
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    dataList[index]['subtitle'],
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
