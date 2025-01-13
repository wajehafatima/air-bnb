import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/underlinedtext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/view-profile-view/editProfileView/EditProfileView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../controller/assets/appImages/appImages.dart';
class Viewprofileview extends StatefulWidget {
  const Viewprofileview({super.key});

  @override
  State<Viewprofileview> createState() => _ViewprofileviewState();
}

class _ViewprofileviewState extends State<Viewprofileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: appColors.whiteBG,
      leading:   IconButton(onPressed: (){
    Navigator.pop(context);
    },icon: Icon(Icons.arrow_back),),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: UnderlinedText(text: 'Edit', onPressed: (){})),
      ],),
      backgroundColor: appColors.whiteBG,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 130.h, width: 330.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(blurRadius: 2,color: appColors.grey)],
                color: appColors.whiteBG
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.center ,
                                    children: [CircleAvatar(
                    radius: 40.r,
                    backgroundImage: AssetImage(appImages.dp),
                                    ),
                                    SizedBox(height: 5.h,),
                                    Primarytext(text: 'Username',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600
                      ,textColor: appColors.blacktext),
                                    SizedBox(height: 5.h,),
                    Primarytext(text: 'Guest', fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        textColor:appColors.blacktext)


                                    ],


                                  ),
                  ),SizedBox(width: 20.w,),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Primarytext(text: '1',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        textColor: appColors.blacktext),
                    Primarytext(text: 'month on Roomoree',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        textColor: appColors.blacktext)
                  ],
                ),
              ),
              ],),
            ),
            SizedBox(height: 20.h,),
            Primarytext(text: 'Wajeha confirmed', fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                textColor:appColors.blacktext),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Icon(Icons.done),
                  SizedBox(width: 10.w,),
                  Primarytext(text: 'Email address',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      textColor: appColors.blacktext),]),
                  SizedBox(height: 20.h,),
                  Divider(),
                  SizedBox(height: 20.h,),
                  Primarytext(text: 'Identity verification',
                      fontSize: 16.sp, fontWeight: FontWeight.w600,
        
                      textColor: appColors.blacktext),
                  SizedBox(height: 10.h,),
                  Primarytext(text: 'Show the others that you are really you with the identity verification badge',
                      fontSize: 12.sp, fontWeight:FontWeight.w400,
                      textColor: appColors.blacktext),
                  SizedBox(height: 20.h,),
                  Custombutton(text: 'Get the badge', onTap:(){},width: 110.w,color: appColors.whiteBG,
                      textColor: appColors.blacktext,),
                  SizedBox(height:20.h),
                  Divider(),
                  SizedBox(height: 20.h,),
                  Primarytext(text: 'It\'s time to create your profile',
                      fontSize:16.sp, fontWeight: FontWeight.w600,
                      textColor: appColors.blacktext),
                  SizedBox(height: 5.h,),
                  Primarytext(text: 'Your Roomoree profile is very important part of every reservation. Create profile to help other guests and hosts  get to know you', fontSize: 12.sp, fontWeight: FontWeight.w400,
                      textColor: appColors.blacktext),
                  SizedBox(height: 10.h,),
                  Custombutton(text: 'Create your profile', onTap: (){
                    Navigator.pushReplacement(
                      context,
                      CupertinoDialogRoute(
                          builder: (context) => Editprofileview(),
                          context: context),
                    );
                  })
                  
        
                  
        
        
          ],),
        ),
      ),
    );
  }
}
