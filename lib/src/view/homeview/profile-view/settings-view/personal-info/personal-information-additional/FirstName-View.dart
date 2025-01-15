import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/PERSONALiNFO-WIDGETS/CustomTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/custombutton.dart';
class Firstnameview extends StatefulWidget {
  const Firstnameview({super.key});

  @override
  State<Firstnameview> createState() => _FirstnameviewState();
}

class _FirstnameviewState extends State<Firstnameview> {
  @override
  Widget build(BuildContext context) {
    return  Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Primarytext(text: 'This is how your first name will appear to Hosts and Guests', fontSize: 14.sp, fontWeight: FontWeight.w300,
            textColor: appColors.blacktext),
        SizedBox(height: 10.h,),
        CustomTextFormField(labelText: 'Preferred first name (optional)'),
        SizedBox(height: 20.h,),
        Custombutton(text: 'Save', onTap: (){},width: 150.w,
          color: appColors.secondary,textColor:appColors.whiteBG,),
      ],
    );
  }
}
