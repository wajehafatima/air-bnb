import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/tabBar.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/home-view-widgets/tab-row.dart';
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
  bool isSwitchOn = false;
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFocused = true; // Focus enable
                      });
                    },
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
                      child: isFocused
                          ? TextField(
                              autofocus: true,
                              onSubmitted: (value) {
                                // Handle submission
                                setState(() {
                                  isFocused =
                                      false; // Dismiss focus after submission
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search your destination...',
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.search,
                                      size: 24, color: appColors.grey),
                                ),
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.search,
                                      size: 24, color: appColors.grey),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
          TabRowWidget(),
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: appColors.whiteBG,
                border: Border.all()),
            child: ListTile(
              title: Primarytext(
                text: 'Display total price',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              subtitle: Primarytext(
                text: 'Includes all fees,before taxes',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.grey,
              ),
              trailing: Switch(
                value: isSwitchOn,
                onChanged: (value) {
                  setState(() {
                    isSwitchOn = value; // Update switch state
                  });
                },
                activeColor:
                    appColors.blacktext, // Customize active switch color
                inactiveThumbColor:
                    appColors.grey, // Customize inactive thumb color
              ),
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
          Text('data'),
          SizedBox(height: 20.h),
          // Additional content can go here
        ],
      ),
    );
  }
}
