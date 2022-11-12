import 'package:curved_navigation_bar/curved_navigation_bar.dart'
    show CurvedNavigationBar;
import 'package:flutter/material.dart';


class bodysub1 extends StatelessWidget {
  const bodysub1(
      {required this.indexPage, required this.onPress, Key? key})
      : super(key: key);
  final int indexPage;
  final Function(int) onPress;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 45.0,
      color:  const Color.fromARGB(255, 27, 94, 32),
      buttonBackgroundColor: const Color.fromARGB(255, 27, 94, 32),
      backgroundColor: Colors.white,
      items: [
        Icon(
          Icons.food_bank_outlined,
          color: indexPage == 0 ? Colors.white : Colors.white,
        ),
        Icon(
          Icons.shopping_bag,
          color: indexPage == 0 ? Colors.white : Colors.white,
        ),
        Icon(
          Icons.home,
          color: indexPage == 0 ? Colors.white : Colors.white,
        ),
        Icon(
          Icons.person,
          color: indexPage == 0 ? Colors.white : Colors.white,
        ),
      ],
      onTap: (value) {
        onPress(value);
      },
    );
  }
}