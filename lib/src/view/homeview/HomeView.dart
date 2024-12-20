import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/tabBar.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homeview extends StatefulWidget {
  Homeview({super.key});

  final List<String> images = [
    appImages.hotel,
    appImages.hotel2,
    appImages.hotel3,
    appImages.hotel4,
  ];

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  int _currentIndex = 0;
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35.h),
          // Search bar and filter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: appColors.whiteBG,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: appColors.grey,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(Icons.search, size: 24, color: appColors.grey),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Primarytext(
                                  text: 'Where to?',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  textColor: appColors.blacktext,
                                ),
                                Primarytext(
                                  text: 'Anywhere Any week Add guests',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  textColor: appColors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                CircleAvatar(
                  backgroundColor: appColors.whiteBG,
                  radius: 20.r,
                  child: Icon(Icons.filter_alt, color: appColors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          // Tab bar
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomTabBar(icon: Icons.bug_report_outlined, text: 'OMG!'),
                CustomTabBar(icon: Icons.stars, text: 'Icons'),
                CustomTabBar(
                    icon: Icons.trending_up_outlined, text: 'Trending'),
                CustomTabBar(
                    icon: Icons.home_work_outlined, text: 'Earth homes'),
                CustomTabBar(icon: Icons.wind_power, text: 'Windmills'),
                CustomTabBar(icon: Icons.vpn_key_outlined, text: 'New'),
                CustomTabBar(
                    icon: Icons.location_city_rounded, text: 'Top cities'),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          // Carousel slider
          SizedBox(
            height: 250.h,
            width: 360.w, // Set width of the carousel slider
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: widget.images.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: appColors.whiteBG,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(widget.images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(
                            Icons.favorite_border,
                            color: appColors.whiteBG,
                            size: 30,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                              ),
                              child: Primarytext(
                                text: 'Guest Favourite',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                textColor: appColors.blacktext,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.images.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 10,
                        width: _currentIndex == index ? 12 : 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? appColors.whiteBG
                              : appColors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          // Additional content can go here
        ],
      ),
    );
  }
}
