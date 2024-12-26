import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class Questionlist extends StatelessWidget {
  final String text;
  const Questionlist({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [SizedBox(height: 10.h,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Primarytext(text: text, fontSize:12.sp, fontWeight: FontWeight.w500,
                    textColor: appColors.blacktext),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp)),
              ],),
            SizedBox(height: 10,),
            Divider()
          ],
        );


  }
}
