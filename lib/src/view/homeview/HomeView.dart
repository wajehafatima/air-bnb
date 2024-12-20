import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/tabBar.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/home-view-widgets/switch-button.dart';
import 'package:air_bnb/src/view/homeview/home-view-widgets/tab-row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home-view-widgets/costum-search.dart';

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
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35.h),
          // Search bar and filter
          CustomSearchBar(),
          SizedBox(height: 20.h),
          // Tab bar
          TabRowWidget(),
          SizedBox(
            height: 10.h,
          ),
          SwitchButtonWidget(),
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
          SizedBox(height: 10.h),
// Additional text content below the slider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Primarytext(
                  text: 'Cap Town, South Africa',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 5.h),
                Primarytext(
                  text: '9.43 kilometers away',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.grey,
                ),
                SizedBox(height: 5.h),
                Primarytext(
                  text: 'May 21-26',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.grey,
                ),
                SizedBox(height: 5.h),
                Primarytext(
                  text: '\$114/night',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),
              ],
            ),
          ),
          // Additional content can go here
        ],
      ),
    );
  }
}
