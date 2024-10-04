import 'package:flutter/material.dart';
import 'package:truecaller_app/view/nonsaved_screen/nonsaved_screen.dart';
import 'package:truecaller_app/view/saved_screen/saved_screen.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Method to change page
  void _onIconTapped(int index) {
    setState(() {
      _currentPage = index;
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
            SizedBox(height: 40), // Adjust the height as needed
            _buildSearchField(),
            SizedBox(height: 20), // Spacing between the search bar and icons
            _buildPageViewIcons(),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  SavedScreen(), // Your saved screen
                  NonsavedScreen(), // Your non-saved screen
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        style:
            const TextStyle(color: Colors.white), // Change text color to white
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

  Widget _buildPageViewIcons() {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // Evenly space the icons
      children: [
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.view_list, color: Colors.white),
              onPressed: () => _onIconTapped(0), // Navigate to saved screen
            ),
            Text(
              "Saved",
              style: TextStyle(
                color: _currentPage == 0 ? Colors.blue : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.grid_view, color: Colors.white),
              onPressed: () => _onIconTapped(1), // Navigate to non-saved screen
            ),
            Text(
              "Non-Saved",
              style: TextStyle(
                color: _currentPage == 1 ? Colors.blue : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
