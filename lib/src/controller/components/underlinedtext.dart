
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UnderlinedText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final double? fontSize;

  const UnderlinedText({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: fontSize ?? 10.sp,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          color: textColor,
        ),
      ),
    );
  }
}
