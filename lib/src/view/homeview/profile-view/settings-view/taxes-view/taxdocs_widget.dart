
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../controller/components/primaryText.dart';
import '../../../../../controller/constants/colors/appColors.dart';

class TaxdocsWidget extends StatelessWidget {
  final String Text1;
  final String Text2;
  final VoidCallback onTap;

  const TaxdocsWidget({
    super.key,
    required this.Text1,
    required this.Text2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(height: 10.h,),
          Primarytext(
            text: Text1,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 5.h,),
          Primarytext(
            text: Text2,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            textColor: appColors.grey,
          ),
          SizedBox(height: 20.h),
          Divider(),
        ],
      ),
    );
  }
}