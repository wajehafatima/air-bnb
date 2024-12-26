import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../controller/assets/appImages/appImages.dart';
import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';

class imageColumn extends StatelessWidget {
  final String image;
  final String title;
  final String title2;

  const imageColumn({
    super.key,
    required this.image,
    required this.title,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400.h,
          width: 400.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
            ),
            color: appColors.grey,
          ),
        ),
        SizedBox(height: 10.h),
        Primarytext(
          text: title,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        Primarytext(
          text: title2,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          textColor: appColors.blacktext,
        ),
      ],
    );
  }
}