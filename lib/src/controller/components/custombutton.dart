import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors/appColors.dart';

class Custombutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double? width;
  final Color? color;
  final Color? textColor;

  const Custombutton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width ?? 1.sw, // default width
          height: 33.h,
          decoration: BoxDecoration(
            color: color ?? appColors.secondary, // default color
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: appColors.grey),
          ),
          child: Center(
            child: Primarytext(
              text: text,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              textColor: textColor ?? appColors.whiteBG, // default text color
            ),
          ),
        ),
      ),
    );
  }
}

