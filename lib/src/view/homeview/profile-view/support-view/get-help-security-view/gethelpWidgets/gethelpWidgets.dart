import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class Gethelpwidgets extends StatelessWidget {
  final String text;
  const Gethelpwidgets({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Primarytext(text:text, fontSize: 11.sp,
            fontWeight: FontWeight.w300, textColor:appColors.blacktext),
      ),
    ),
      height: 50.h,width: 300.w,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: appColors.grey.withOpacity(0.2),
      ),);
  }
}
