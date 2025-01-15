import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/underlinedtext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Govtidview extends StatefulWidget {
  const Govtidview({super.key});

  @override
  State<Govtidview> createState() => _GovtidviewState();
}

class _GovtidviewState extends State<Govtidview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Primarytext(text: 'Identity verification', fontSize: 18.sp, fontWeight: FontWeight.w500,
            textColor: appColors.blacktext),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Primarytext(text: 'Let\'s add your ID', fontSize: 14.sp, fontWeight: FontWeight.w400,
            textColor:appColors.blacktext),
          SizedBox(height: 5.h,),
          Primarytext(text: 'This helps us check that you\'re really you. Identity verification is one of the ways we keep Roomoree secure',
              fontSize: 12.sp, fontWeight: FontWeight.w300, textColor: appColors.blacktext),
          SizedBox(height: 15.h,),
          UnderlinedText(text: 'How identity verfication works', onPressed: (){} ,textColor: appColors.blacktext,fontSize: 12.sp,),
          Image.asset(appIcons.verify,height: 200.h,width: 200.w,),
          SizedBox(height: 20.h,),
          Primarytext(text: 'your ID will be hanled according to our Privacy Policy and will not be shared withyour Hosts and Guest',
              fontSize: 12.sp, fontWeight: FontWeight.w400, textColor: appColors.blacktext),
          SizedBox(height: 40.h,),
          Custombutton(text: 'Add an ID', onTap: (){},color: appColors.blacktext,),


      ],),
    );
  }
}
