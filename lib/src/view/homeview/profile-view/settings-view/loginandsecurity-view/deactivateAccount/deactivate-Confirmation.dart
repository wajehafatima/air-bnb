import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/deactivateAccount/info-row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/assets/appImages/appImages.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class Deactivateconfirmation extends StatefulWidget {
  const Deactivateconfirmation({super.key});

  @override
  State<Deactivateconfirmation> createState() => _DeactivateconfirmationState();
}

class _DeactivateconfirmationState extends State<Deactivateconfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.arrow_back_ios),

        ),
        backgroundColor: appColors.whiteBG,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Primarytext(text: 'Deactivate account?', fontSize: 18.sp, fontWeight: FontWeight.w600,
              textColor: appColors.blacktext),
          SizedBox(height: 5.h,),
          Primarytext(text: 'user@gmail.com', fontSize: 14.sp, fontWeight: FontWeight.w300,
              textColor: appColors.blacktext),
          SizedBox(height: 10.h,),
         SimpleReusableRow(imagePath: appIcons.check,
             text: 'The profile and listings associated with this account\n will disappear.'),

          SizedBox(height: 15.h,),
          SimpleReusableRow(imagePath: appIcons.check,
              text:'You won\'t be able to access this account info and \npast reservations'),

          SizedBox(height: 20.h,),
          Row(children: [
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.arrow_back_ios,color: appColors.linkBlue,),
            ),
           // SizedBox(width: 5.w,),
            Primarytext(text: 'Back', fontSize:14.sp,
                fontWeight: FontWeight.w400, textColor: appColors.linkBlue),
            SizedBox(width: 60.w,),
            Custombutton(text: 'Deactivate account', onTap: (){},width: 170.w,color: appColors.linkBlue,)
          ],)
        ],),
      ),
    );
  }
}
