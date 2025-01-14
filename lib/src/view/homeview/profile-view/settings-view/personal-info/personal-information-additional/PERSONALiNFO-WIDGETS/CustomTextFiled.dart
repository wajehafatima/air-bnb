import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../controller/components/primaryText.dart';
import '../../../../../../../controller/constants/colors/appColors.dart';



class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        label: Primarytext(
          text: labelText,
          fontSize: 12.sp,
          fontWeight: FontWeight.w200,
          textColor: appColors.blacktext,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.blacktext),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.blacktext),
        ),
        border: OutlineInputBorder(), // Default border
      ),
    );
  }
}
