import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/PERSONALiNFO-WIDGETS/CustomTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Legalnameview extends StatefulWidget {
  const Legalnameview({super.key});

  @override
  State<Legalnameview> createState() => _LegalnameviewState();
}

class _LegalnameviewState extends State<Legalnameview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
    appBar:AppBar(backgroundColor: appColors.whiteBG,
      title: Primarytext(text: 'Legal name', fontSize: 20.sp,
          fontWeight: FontWeight.w500, textColor:appColors.blacktext),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios)),
    ),
    body: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(text: 'Make sure that this matches the name on your government ID ', fontSize: 14.sp, fontWeight: FontWeight.w300,
              textColor: appColors.blacktext),
          SizedBox(height: 10.h,),
          CustomTextFormField(labelText: 'First name on ID'),
          SizedBox(height: 10.h,),
          CustomTextFormField(labelText: 'Last name on ID'),
          SizedBox(height: 20.h,),
          Custombutton(text: 'Save', onTap: (){},width: 150.w,
            color: appColors.secondary,textColor:appColors.whiteBG,),
        ],
      ),
    ),

    );
  }
}
