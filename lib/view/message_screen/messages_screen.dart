import 'package:flutter/material.dart';
import 'package:truecaller_app/view/highlights_screen/highlights_screen.dart';
import 'package:truecaller_app/view/inbox_screen/inbox_screen.dart';
import 'package:truecaller_app/view/promotion_screen/promotion_screen.dart';
import 'package:truecaller_app/view/spam_screen/spam_screen.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Set background color to black
        child: Column(
          children: [
            SizedBox(height: 40), // Space above the search field
            _buildSearchField(),
            SizedBox(height: 20), // Space between search field and icons
            _buildIconRow(),
            Expanded(child: _buildPageView()),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        style: const TextStyle(color: Colors.white),
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
                      color: Colors.red,
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
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 26,
              ),
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
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _buildIconRow() {
    final icons = [
      Icons.inbox,
      Icons.newspaper,
      Icons.favorite,
      Icons.block,
    ];

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            return GestureDetector(
              onTap: () => _onIconTapped(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icons[index],
                    color: _currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                  if (_currentIndex == index) // Show name only when tapped
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        _getIconLabel(index),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                ],
              ),
            );
          }),
        ),
        Positioned(
          bottom: 0,
          left: _currentIndex *
                  (MediaQuery.of(context).size.width / icons.length) +
              0, // Adjust position for padding
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300), // Animation duration
            height: 4.0, // Height of the underline
            color: Colors.blue,
            width: 120, // Adjust width to fit your design (wider for text)
          ),
        ),
      ],
    );
  }

  String _getIconLabel(int index) {
    switch (index) {
      case 0:
        return "Inbox";
      case 1:
        return "Highlights";
      case 2:
        return "Promotion";
      case 3:
        return "Spam";
      default:
        return "";
    }
  }

  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      children: [
        InboxScreen(),
        HighlightsScreen(),
        PromotionScreen(),
        SpamScreen(),
      ],
    );
  }
}
