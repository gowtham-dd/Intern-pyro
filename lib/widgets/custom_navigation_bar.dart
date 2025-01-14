import 'package:flutter/material.dart';
import '../models/tab_item_model.dart'
    as custom_model; // Alias your custom model
import '../utils/colors.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigation({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<custom_model.TabItem> items = [
      custom_model.TabItem(icon: Icons.home, title: 'Home'),
      custom_model.TabItem(icon: Icons.search, title: 'Shop'),
      custom_model.TabItem(icon: Icons.favorite_border, title: 'Wishlist'),
      custom_model.TabItem(icon: Icons.shopping_cart_outlined, title: 'Cart'),
      custom_model.TabItem(icon: Icons.account_box, title: 'Profile'),
    ];

    return BottomNavigationBar(
      items: items
          .map((item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.title,
              ))
          .toList(),
      currentIndex: selectedIndex,
      onTap: onTap,
      selectedItemColor: Color(0xFF1B383A),
      unselectedItemColor: const Color.fromARGB(255, 78, 74, 74),
      backgroundColor: Colors.blue,
    );
  }
}
