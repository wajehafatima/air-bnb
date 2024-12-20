import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors/appColors.dart';
class Custombutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const Custombutton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: InkWell(onTap: onTap,
        child: Container(
          height: 33.h,
          decoration: BoxDecoration(
            color: appColors.secondary,
            borderRadius: BorderRadius.circular(10),

          ),
          child: Center(child: Primarytext(text: text, fontSize:15.sp, fontWeight:FontWeight.w500, textColor: appColors.whiteBG),),
        ),
      ),
    );
  }
}
