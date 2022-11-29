import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final Function(int value) function;
  final int index;

  const BottomNav(this.function, this.index);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: function,
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank_sharp),
          label: "menus",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_sharp),
          label: "senhas",
        ),
      ],
    );
  }
}
