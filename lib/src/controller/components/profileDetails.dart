import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors/appColors.dart';
class ProfileDetails extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileDetails({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h,),
        Row(
          children: [
            Icon(icon),
            SizedBox(width: 15.w),
            Primarytext(
              text: text,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.blacktext,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
        SizedBox(height: 7.h,),
        Divider()
      ],
    );
  }
}
