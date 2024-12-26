import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/assets/appIcons/appIcons.dart';
import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class Heretohelpdetails extends StatelessWidget {
  final String text1;
  final String image;
  final String text2;
  const Heretohelpdetails({super.key,
  required this.text2, required this.text1,
  required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image,height: 40.h,width: 40.w,),

            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Primarytext(text: text1, fontSize: 12.sp,
                    fontWeight: FontWeight.w500, textColor: appColors.blacktext),
                Primarytext(text: text2, fontSize: 12.sp,
                    fontWeight: FontWeight.w300, textColor: appColors.blacktext),
              ],
            )
          ],)
      ],
    );
  }
}
