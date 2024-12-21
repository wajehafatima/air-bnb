import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors/appColors.dart';

class PersonalDetails extends StatelessWidget {
  final String title;
  final String title2;
  final String buttonText;
  final VoidCallback onTap;

  const PersonalDetails({
    Key? key,
    required this.title,
    required this.title2,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Primarytext(
                text: title,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: appColors.blacktext,
              ),
              TextButton(
                onPressed: onTap,
                child: Text(
                  buttonText,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: appColors.blacktext,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Primarytext(
            text: title2,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            textColor: appColors.grey,
          ),
          SizedBox(height: 5.h),
          Divider(),
        ],
      ),
    );
  }
}
