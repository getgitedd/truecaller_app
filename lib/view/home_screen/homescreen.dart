import 'package:flutter/material.dart';
import 'package:truecaller_app/view/adview/adview.dart';
import 'package:truecaller_app/view/assistant_screen/assistant_screen.dart';
import 'package:truecaller_app/view/contacts_screen/contact_screen.dart';
import 'package:truecaller_app/view/listview_screen/listview1.dart';
import 'package:truecaller_app/view/listview2_screen/listview2.dart';
import 'package:truecaller_app/view/message_screen/messages_screen.dart';
import 'package:truecaller_app/view/premium_screen/premium_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreenContent(),
    MessagesScreen(),
    ContactScreen(),
    PremiumScreen(),
    AssistantScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: 'Premium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            label: 'Assistant',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Home screen content widget
class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          _buildSearchField(),
          const SizedBox(height: 20),
          _buildBoxUnder(),
          const SizedBox(height: 20),
          _buildTextUnderBox(),
          const SizedBox(height: 10),
          SizedBox(
            height: 110,
            child: const Listview1(),
          ),
          const AdViewBlock(),
          SizedBox(
            height: 730,
            child: const Listview2(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  static Widget _buildSearchField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        style: const TextStyle(color: Color.fromARGB(255, 32, 33, 37)),
        decoration: InputDecoration(
          prefixIcon: Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Stack(
              children: [
                const Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          suffixIcon: Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 10),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 26,
                ),
              ],
            ),
          ),
          hintText: "Search Numbers, Names & More",
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: const Color.fromARGB(255, 32, 33, 37),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 32, 33, 37)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 32, 33, 37)),
          ),
        ),
      ),
    );
  }

  static Row _buildTextUnderBox() {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Frequently Called',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'View All',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  static Row _buildBoxUnder() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 32, 33, 37),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 24,
                ),
                Text(
                  'Favorites',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 32, 33, 37),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 24,
                ),
                Text(
                  'Voice HD',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
