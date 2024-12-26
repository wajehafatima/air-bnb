import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../controller/components/primaryText.dart';
import '../../../../../controller/constants/colors/appColors.dart';
class Privacyoptionlist extends StatelessWidget {
  final String text1;
  final String text2;
  const Privacyoptionlist({super.key,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Primarytext(text: text1, fontSize: 13.sp,
              fontWeight: FontWeight.w400, textColor: appColors.blacktext),
            SizedBox(height: 3.h,),
            Primarytext(text: text2, fontSize: 11.sp,
                fontWeight: FontWeight.w300, textColor: appColors.blacktext)],

        ),
        IconButton(onPressed: (){}, icon:Icon( Icons.arrow_forward_ios))
      ],);
  }
}
