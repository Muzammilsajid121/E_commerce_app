import 'package:e_commerce_app/main_page2_model.dart';
import 'package:e_commerce_app/screens/categories_2.dart';
import 'package:e_commerce_app/screens/favourities.dart';
import 'package:e_commerce_app/screens/maddy/my_profile.dart';
import 'package:e_commerce_app/screens/main_page.dart';
import 'package:e_commerce_app/screens/my_bag.dart';
import 'package:e_commerce_app/screens/my_orders.dart';
import 'package:e_commerce_app/screens/setting.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  //
  final List<Widget> _pages = [
    const MainPage(), // Replace with your own content widgets
    const Category2(),
    const MyBag(),
    const Favourite(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex], // Display the selected screen from _pages
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        currentIndex: currentIndex,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/hm.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/sp.png'),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bg.png'),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/ht.png'),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/ac1.png'),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.red, // Set the selected icon color to red
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
