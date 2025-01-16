import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';

class SimpleRow extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const SimpleRow({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Primarytext(
            text: text,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            textColor: appColors.blacktext,
          ),
          Icon(Icons.circle_outlined,color: appColors.grey.withOpacity(0.4),),
        ],
      ),
    );
  }
}
