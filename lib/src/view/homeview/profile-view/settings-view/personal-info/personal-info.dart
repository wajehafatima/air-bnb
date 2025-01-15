import 'package:air_bnb/src/controller/components/personalDetails-list.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/profileView.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/EmergencyContact-View.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/FirstName-View.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/Govt-id-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/LegalName-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/PERSONALiNFO-WIDGETS/CustomTextFiled.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/addressView.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/email_view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/phoneNumber-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../controller/components/custombutton.dart';
class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Profileview()));
      }, icon: Icon(Icons.arrow_back),
      ),
     backgroundColor: appColors.whiteBG, ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Primarytext(text: 'Personal Info', fontSize:25.sp,
                  fontWeight: FontWeight.w400, textColor: appColors.blacktext),
              SizedBox(height: 20.h,),
             PersonalDetails(title: 'Legal name', title2: 'Username', buttonText:'Edit', onTap:(){}, expandedContent: Column(children: [
               Legalnameview()
             ],),
               ),
              PersonalDetails(title: 'preferred first name', title2: 'not provided', buttonText:'Add', onTap:() {},
                expandedContent: Column(
                  children: [
                    Firstnameview(),
                  ],
                )
              ),
              PersonalDetails(title: 'Phone number', title2: '+11122334455', buttonText:'Edit', onTap:(){},
              expandedContent: Phonenumberview(),),
              PersonalDetails(title: 'Email', title2: 'ma****gmail.com', buttonText:'Edit', onTap:(){},
              expandedContent: EmailView(),),
              PersonalDetails(title: 'Address', title2: 'not provided', buttonText:'Add', onTap:(){},
              expandedContent: Addressview(),),
              PersonalDetails(title: 'Emergency contact', title2: '+134567890', buttonText:'Edit', onTap:(){
                Navigator.pushReplacement(
                  context,
                  CupertinoDialogRoute(
                      builder: (context) => Emergencycontactview(),
                      context: context),
                );
              },
               ),
              PersonalDetails(title: 'Government ID', title2: 'not provided', buttonText:'Add', onTap:(){
                Navigator.pushReplacement(
                  context,
                  CupertinoDialogRoute(
                      builder: (context) => Govtidview(),
                      context: context),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
