import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/appIcons/appIcons.dart';
import '../constants/colors/appColors.dart';
class SecurityPolicyLogin extends StatelessWidget {
  const SecurityPolicyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(appIcons.security,height: 70.h, width: 70.w,),
              SizedBox(height: 10.h,),
              Primarytext(text: 'Keeping your account Secure', fontSize:20.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext),
              Primarytext(text: 'We regularly review your account to ensure that they are secure as possible.we\'ll also let you know if there\'s more we can do to increase the security of tour account.',
                  fontSize: 10.sp, fontWeight: FontWeight.w300, textColor: appColors.blacktext),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Learn about safety tips for ',
                      style: TextStyle(fontSize: 12.sp, color: appColors.blacktext),
                    ),
                    TextSpan(
                      text: 'guests',
                      style: TextStyle(fontSize: 12.sp, color: appColors.linkBlue),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(fontSize: 12.sp, color: appColors.blacktext),
                    ),
                    TextSpan(
                      text: 'hosts',
                      style: TextStyle(fontSize: 12.sp, color: appColors.linkBlue),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(fontSize: 12.sp, color: appColors.blacktext),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20.h,),
              Divider(),]));
  }
}
