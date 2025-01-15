import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/PERSONALiNFO-WIDGETS/CustomTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/custombutton.dart';
import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class EmailView extends StatefulWidget {
  const EmailView({super.key});

  @override
  State<EmailView> createState() => _EmailViewState();
}

class _EmailViewState extends State<EmailView> {
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        Primarytext(text: 'Use an address you\'ll always have access to', fontSize: 12.sp, fontWeight:FontWeight.w300,
            textColor: appColors.blacktext),
        SizedBox(height: 10.sp,),
        CustomTextFormField(labelText: 'Email'),
        SizedBox(height: 20.h,),
        Custombutton(text: 'Save', onTap: (){},width: 150.w,
          color: appColors.secondary,textColor:appColors.whiteBG,),
      ],
    );
  }
}
