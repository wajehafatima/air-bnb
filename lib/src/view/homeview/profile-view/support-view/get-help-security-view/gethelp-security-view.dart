import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/get-help-security-view/gethelpWidgets/gethelpWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Gethelpsecurityview extends StatefulWidget {
  const Gethelpsecurityview({super.key});

  @override
  State<Gethelpsecurityview> createState() => _GethelpsecurityviewState();
}

class _GethelpsecurityviewState extends State<Gethelpsecurityview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: appColors.whiteBG,
      body:
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: 40.h,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:Icon(Icons.arrow_back)),
          Column(children: [CircleAvatar(backgroundColor: appColors.blacktext,radius: 20.r,

          ),SizedBox(height: 3.h,),
          Primarytext(text: 'Roomoree Support', fontSize:10.sp,
        fontWeight: FontWeight.w300, textColor: appColors.blacktext)],),
          TextButton(onPressed: (){}, child: Primarytext(text: 'Details', fontSize:11.sp,
        fontWeight: FontWeight.w500, textColor: appColors.blacktext)),

        ],),
          SizedBox(height: 3.h,),
          Divider(),
          SizedBox(height: 20.h,),
          Primarytext(text: 'Today', fontSize: 10.sp,
              fontWeight: FontWeight.w400, textColor: appColors.blacktext),
            SizedBox(height: 10.h,),
            Primarytext(text: 'Roomoree support  12:19 AM', fontSize: 11.sp,
                fontWeight: FontWeight.w400, textColor:appColors.blacktext),
            Gethelpwidgets(text: 'Hi wajeha, if there is any emergency in progress, lets get you connected with local emergency services now.'),
            Container(height: 40.h,width: 300.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                border: Border.all(color: appColors.grey)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Primarytext(text: 'Dial emergency Services', fontSize:12.sp,
                      fontWeight: FontWeight.w500, textColor: appColors.blacktext),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
              ],),
            ),
            Gethelpwidgets(text: 'If you need help from Roomoree, select the issue you\'re experiencing. This info helps us get to the right person faster.'),
            


        ],),
      ),
    );
  }
}
