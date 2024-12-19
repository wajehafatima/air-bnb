import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors/appColors.dart';

class CustomTabBar extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomTabBar({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        children: [
          Icon(
            icon,
            color: appColors.grey,
            size: 30,
          ),
          Primarytext(
            text: text,
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            textColor: appColors.grey,
          ),
        ],
      ),
    );
  }
}
