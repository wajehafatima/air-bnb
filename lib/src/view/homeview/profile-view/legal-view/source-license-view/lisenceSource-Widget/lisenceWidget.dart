import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';

class LicenseWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const LicenseWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        InkWell(
          onTap: onTap,
          child: Primarytext(
            text: text,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            textColor: appColors.blacktext,
          ),
        ),
        SizedBox(height: 10.h),
        Divider(),
      ],
    );
  }
}
