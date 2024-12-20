import 'package:air_bnb/src/view/homeview/messagesView.dart';
import 'package:air_bnb/src/view/homeview/profileView.dart';
import 'package:air_bnb/src/view/homeview/tripsView.dart';
import 'package:air_bnb/src/view/homeview/wishListView.dart';
import 'package:flutter/material.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'homeView.dart'; // Replace with the correct path to the HomeView file.

class MainHomeView extends StatefulWidget {
  const MainHomeView({Key? key}) : super(key: key);

  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
     Homeview(),
    Wishlistview(),
    Tripsview(),
    Messagesview(),
    Profileview(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appColors.whiteBG,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: appColors.secondary,
        unselectedItemColor: appColors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_of_travel_outlined),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
