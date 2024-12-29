import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class Editprofilewidget extends StatelessWidget {
  const Editprofilewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Icon(Icons.work_outline_outlined),
          SizedBox(width: 10.w),
          InkWell(
            onTap: () {

            },
            child: Primarytext(
              text: 'My Work',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.blacktext,
            ),
          ),
        ],
      ),
      SizedBox(height: 10.h),
      Divider(),
      SizedBox(height: 10.h,),
    ],);
  }
}
