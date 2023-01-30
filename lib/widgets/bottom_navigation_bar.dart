import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key, required this.onTap, required int index}) : _index = index;

  final Function(int) onTap;
  final int _index;

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      currentIndex: widget._index,
      selectedFontSize: 12,
      onTap: widget.onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_rounded),
          tooltip: 'Home',
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart_rounded),
          tooltip: 'Groceries',
          label: 'Groceries',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          tooltip: 'Seach',
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_outlined),
          activeIcon: Icon(Icons.receipt_rounded),
          tooltip: 'Orders',
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          activeIcon: Icon(Icons.person_rounded),
          tooltip: 'Profile',
          label: 'Profile',
        ),
      ],
    );
  }
}
