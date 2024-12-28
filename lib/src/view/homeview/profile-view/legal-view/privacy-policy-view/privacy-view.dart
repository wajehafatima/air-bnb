import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Privacyview extends StatefulWidget {
  const Privacyview({super.key});

  @override
  State<Privacyview> createState() => _PrivacyviewState();
}

class _PrivacyviewState extends State<Privacyview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back),),
        title: Primarytext(text: 'Privacy policy',
            fontSize: 15.sp,
            fontWeight:FontWeight.w400,
            textColor:appColors.blacktext),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Primarytext(text: 'Legal terms',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.blacktext),
          Primarytext(text: 'Privacy Policy',
              fontSize:25.sp ,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext),
          SizedBox(height: 5.h,),
            Image.asset(appImages.hosting),
            SizedBox(height: 10.h,),

        ],),
      ),
    );
  }
}
