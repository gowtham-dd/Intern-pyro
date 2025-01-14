import 'package:flutter/material.dart';
import 'package:login_screen_2/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Update content based on selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of screens corresponding to the bottom navigation
  final List<Widget> _screens = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Shop Screen')),
    const Center(child: Text('Wishlist Screen')),
    const Center(child: Text('Cart Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigation(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
