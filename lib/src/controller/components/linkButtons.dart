import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors/appColors.dart';

class Linkbuttons extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const Linkbuttons({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10,bottom: 5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 35.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: appColors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  height: 20.h,
                  width: 20.w,
                ),
                SizedBox(width: 70.w),
                Center(
                  child: Primarytext(
                    text: text,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    textColor: appColors.blacktext,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
