import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFocused = true; // Enable focus
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
                            isFocused = false; // Dismiss focus after submission
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
          ),
          SizedBox(width: 10.w),
          CircleAvatar(
            backgroundColor: appColors.whiteBG,
            radius: 20.r,
            child: Icon(Icons.filter_alt, color: appColors.grey),
          ),
        ],
      ),
    );
  }
}
