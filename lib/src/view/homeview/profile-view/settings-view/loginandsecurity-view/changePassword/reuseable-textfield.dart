import 'package:flutter/material.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableTextField extends StatelessWidget {

  final TextEditingController? controller;


  const ReusableTextField({
    Key? key,

    this.controller,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      decoration: InputDecoration(

        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.blacktext, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.blacktext, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.blacktext, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
