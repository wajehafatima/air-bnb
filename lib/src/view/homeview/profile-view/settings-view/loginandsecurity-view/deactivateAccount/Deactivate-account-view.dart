import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/deactivateAccount/selectable-row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Deactivateaccountview extends StatefulWidget {
  const Deactivateaccountview({super.key});

  @override
  State<Deactivateaccountview> createState() => _DeactivateaccountviewState();
}

class _DeactivateaccountviewState extends State<Deactivateaccountview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.arrow_back_ios),

        ),
        backgroundColor: appColors.whiteBG,

      ),
      backgroundColor: appColors.whiteBG,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(text: 'What prompted you to deactivate?', fontSize: 20.sp,
                fontWeight: FontWeight.w600,textColor: appColors.blacktext),
            SizedBox(height: 15.h,),
        SimpleRow(text: 'I have safety or privacy concerns',onTap: (){},),
            SizedBox(height: 5.h,),
            Divider(color: appColors.grey.withOpacity(0.4),),
            SizedBox(height: 5.h,),
            SimpleRow(text: 'I can\'t host anymore'),
            SizedBox(height: 5.h,),
            Divider(color: appColors.grey.withOpacity(0.4),),
            SizedBox(height: 5.h,),
            SimpleRow(text: 'I can\'t comply with Roomoree\'s terms of service/ community commitment.'),
            SizedBox(height: 5.h,),
            Divider(color: appColors.grey.withOpacity(0.4),),
            SizedBox(height: 5.h,),
            SimpleRow(text: 'Other'),

            SizedBox(height: 20.h,),
            Custombutton(text: 'Continue', onTap: (){})



        ],),
      ),
    );
  }
}
