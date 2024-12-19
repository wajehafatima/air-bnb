import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Primarytext extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;

  const Primarytext({super.key,
  required this.text,required this.fontSize, required this.fontWeight, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,

style: GoogleFonts.poppins(fontSize: fontSize,fontWeight: fontWeight,color: textColor,),

    );
  }
}
