import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/tabBar.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/messagesView.dart';
import 'package:air_bnb/src/view/homeview/profileView.dart';
import 'package:air_bnb/src/view/homeview/tripsView.dart';
import 'package:air_bnb/src/view/homeview/wishListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
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
      body: Column(
        children: [
          SizedBox(height: 35.h),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  height: 40.h,
                  width: 350,
                  decoration: BoxDecoration(
                      color: appColors.whiteBG,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: appColors.grey,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(width: 10.w),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Primarytext(
                                  text: 'Where to?',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  textColor: appColors.blacktext),
                              Primarytext(
                                  text: 'Anywhere Any week Add guests',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  textColor: appColors.grey)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                CircleAvatar(
                    backgroundColor: appColors.whiteBG,
                    radius: 20.r,
                    child: Center(child: Icon(Icons.filter_alt)))
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomTabBar(icon: Icons.bug_report_outlined, text: 'OMG!'),
                CustomTabBar(icon: Icons.stars, text: 'Icons'),
                CustomTabBar(icon: Icons.trending_up_outlined, text: 'Trending'),
                CustomTabBar(icon: Icons.home_work_outlined, text: 'Earth homes'),
                CustomTabBar(icon: Icons.wind_power, text: 'windmills'),
                CustomTabBar(icon: Icons.vpn_key_outlined, text: 'New'),
                CustomTabBar(icon: Icons.location_city_rounded, text: 'Top cities')
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Column(
            children: [
              Row(
                children: [],
              )
            ],
          )
        ],
      ),






      // bnb
      bottomNavigationBar: BottomNavigationBar(backgroundColor: appColors.whiteBG,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: appColors.secondary,
        unselectedItemColor: appColors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_of_travel_outlined,),
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