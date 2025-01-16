import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleReusableRow extends StatelessWidget {
  final String imagePath; // Path of the image
  final String text; // Text to display

  const SimpleReusableRow({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            imagePath,
            height: 25.0,
            width: 25.0,
          ),
        ),
        SizedBox(width: 8.w),
        Primarytext(
          text: text,
          fontSize: 12.sp,
          fontWeight: FontWeight.w300,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
