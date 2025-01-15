import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Emergencycontactview extends StatefulWidget {
  const Emergencycontactview({super.key});

  @override
  State<Emergencycontactview> createState() => _EmergencycontactviewState();
}

class _EmergencycontactviewState extends State<Emergencycontactview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: appColors.whiteBG,),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Primarytext(text: 'Add at least pne emergency contact', fontSize: 14.sp, 
            fontWeight: FontWeight.w400, textColor: appColors.blacktext),
          SizedBox(height: 5.h,),
          Primarytext(text: 'An emergency contact gives us another possible way to help out if you\'re ever in an urgent situation. We suggest you add at least one contact before you start a trip. We\'ll never share the infowith other people using Roomoree', fontSize: 12.sp, fontWeight: FontWeight.w300,
              textColor: appColors.blacktext),
          SizedBox(height: 20.h,),
          Image.asset(appIcons.emergency),
          SizedBox(height: 80.h,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Primarytext(text: 'Learn more', fontSize: 12.sp,
                  fontWeight: FontWeight.w500, textColor: appColors.blacktext),
              Custombutton(text: 'Add now', onTap: (){
                Navigator.pushReplacement(
                  context,
                  CupertinoDialogRoute(
                      builder: (context) => Emergencycontactview(),
                      context: context),
                );
              },width: 120.w,color: appColors.blacktext,),

            ],
          )
      ],),
    );
  }
}
