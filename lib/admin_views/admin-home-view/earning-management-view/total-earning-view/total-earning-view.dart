import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Totalearningview extends StatelessWidget {
  const Totalearningview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Earnings from Hosts and Guests',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.h),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Primarytext(text:
                    'Total Earnings: ₹50,000',textColor: appColors.whiteBG,
                   fontSize: 16.sp, fontWeight: FontWeight.w600),

                  SizedBox(height: 10.h),
                  Primarytext(text:
                    'Total Hosts: 20',
                    textColor: appColors.whiteBG,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp),

                  SizedBox(height: 10.h),
                  Primarytext(text:
                    'Total Guests: 300',textColor: appColors.whiteBG,fontWeight: FontWeight.w300,
                    fontSize: 14.sp),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
