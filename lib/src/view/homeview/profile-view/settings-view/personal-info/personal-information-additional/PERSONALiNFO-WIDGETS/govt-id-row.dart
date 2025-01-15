import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../controller/components/primaryText.dart';
import '../../../../../../../controller/constants/colors/appColors.dart';

class GovtIdrow extends StatelessWidget {
  final String text;
  final String icon; // Image path as a string
  final VoidCallback onTap; // Callback for tap event

  const GovtIdrow({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap, // Accepting the onTap callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Executing the callback when tapped
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appColors.whiteBG,
          border: Border.all(color: appColors.blacktext),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(width: 10.w),
            Primarytext(
              text: text,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.blacktext,
            ),
          ],
        ),
      ),
    );
  }
}
