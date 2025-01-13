import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceOptionContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  const PlaceOptionContainer({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: appColors.blacktext,
            size: 24.sp,
          ),
          SizedBox(height: 8.h),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              color: appColors.blacktext,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
