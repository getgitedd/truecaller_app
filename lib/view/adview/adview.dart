import 'package:flutter/material.dart';

class AdViewBlock extends StatelessWidget {
  const AdViewBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // adjust the width as needed
      height: 160, // adjust the height as needed
      margin: const EdgeInsets.all(5), // add some margin for spacing
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // add a border
        borderRadius: BorderRadius.circular(12), // add rounded corners
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/1031700/pexels-photo-1031700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', // replace with your image URL
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
