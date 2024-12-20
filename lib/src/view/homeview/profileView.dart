import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/profileDetails.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Profileview extends StatefulWidget {
  const Profileview({super.key});

  @override
  State<Profileview> createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment:CrossAxisAlignment.start,
            children: [SizedBox(height: 40.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Primarytext(text: 'Profile', fontSize:25.sp, fontWeight:FontWeight.w500, textColor:appColors.blacktext),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,color: appColors.blacktext,size: 30,))
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
          children: [
            CircleAvatar(radius: 25.r,backgroundImage: AssetImage(appImages.dp),),
            SizedBox(width: 15.w,),
            Column(children: [
              Primarytext(text: 'Username', fontSize:13.sp, fontWeight:FontWeight.w500, textColor: appColors.blacktext),
              Primarytext(text: 'Show profile', fontSize:10.sp, fontWeight:FontWeight.w300, textColor:appColors.blacktext),
            ],),
        SizedBox(width: 140.w,),
        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
          ],
            ),
              SizedBox(height: 5.w,),
              Divider(),
              SizedBox(height: 15.h,),
              Container(height: 70.h,width: 380.w,
              decoration: BoxDecoration(
                color: appColors.whiteBG,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 2,color: appColors.grey),]

              ), child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 20),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                                Primarytext(text: 'Airbnb your home', fontSize:13.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext,),
                      SizedBox(height: 5.h,),

                      Primarytext(text: 'It\'s easy to start hosting and earn extra income', fontSize: 10.sp, fontWeight: FontWeight.w300, textColor: appColors.blacktext)
                    ],),
                  ),
                    Image.asset(appIcons.home,width: 60.w,height: 60.h,)
                  ],),
              ),),
              SizedBox(height: 15.h,),
              Divider(),
              SizedBox(height: 10.h,),
              Primarytext(text: 'Settings', fontSize:20.sp, fontWeight:FontWeight.w500, textColor:appColors.blacktext),
              SizedBox(height: 20.h,),
              ProfileDetails(icon: Icons.person_outline_rounded, text:'Personal Information'),
              ProfileDetails(icon: Icons.security, text:'Login and Security'),
              ProfileDetails(icon: Icons.payments_outlined, text:'Payments and payouts'),
              ProfileDetails(icon: Icons.settings_applications_outlined, text:'Accessibility'),
              ProfileDetails(icon: Icons.copy_rounded, text:'Taxes'),
              ProfileDetails(icon: Icons.g_translate, text:'Translation'),
              ProfileDetails(icon: Icons.notifications_outlined, text:'Notifications'),
              ProfileDetails(icon: Icons.lock_outline, text:'Privacy and Sharing'),
              ProfileDetails(icon: Icons.card_travel, text:'Travel for work'),


            ],),
        ),
      ),
    );
  }
}
