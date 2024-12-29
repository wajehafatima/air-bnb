import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';

class EditProfileRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const EditProfileRow({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: appColors.blacktext), // Reusable icon
            SizedBox(width: 10.w),
            InkWell(
              onTap: onTap, // Reusable tap action
              child: Primarytext(
                text: text, // Reusable text
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: appColors.blacktext,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Divider(),
        SizedBox(height: 10.h),
      ],
    );
  }
}
