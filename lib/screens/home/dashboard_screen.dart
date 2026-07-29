import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/home/onboarding_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text("Two")),
    Center(child: Text("Two")),
    Center(child: Text("Four")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/home.png"), size: 28),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bell.png"), size: 28),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/orders.png"), size: 28),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/user.png"), size: 28),
            label: "User",
          ),
        ],
      ),
    );
  }
}
