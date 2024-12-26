// Separate StatefulWidget for Account Tab
import 'package:air_bnb/src/controller/components/personalDetails-list.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(height: 20.h,),
          Primarytext(text: 'Account activity and policies', fontSize: 20.sp, fontWeight: FontWeight.w500,
            textColor: appColors.blacktext,),
          Primarytext(text: 'confirm your booking and account activity, and learn about important Airbnb policies.', fontSize: 12.sp,
              fontWeight: FontWeight.w300, textColor: appColors.blacktext),
          SizedBox(height: 15.h,),
          PersonalDetails(title: 'Account activity', title2: 'On: Email and Push', buttonText:'Edit', onTap: (){}),
          SizedBox(height: 5.h,),
          PersonalDetails(title: 'Guest policies', title2:'On: Email and push ', buttonText: 'Edit', onTap:(){}),

          SizedBox(height: 20.h,),
          Primarytext(text: 'Reminders', fontSize: 20.sp,
              fontWeight:FontWeight.w500, textColor: appColors.blacktext),
          Primarytext(text: 'Get important reminders about your reservation, listings, and  account activity', fontSize:12.sp,
              fontWeight: FontWeight.w300, textColor: appColors.blacktext),
          PersonalDetails(title: 'Reminders', title2: 'On: Email and Push', buttonText: 'Edit', onTap:(){}),
          SizedBox(height: 20.h,),
          Primarytext(text: 'Guest and Host messages', fontSize:20.sp, fontWeight:FontWeight.w500,
              textColor: appColors.blacktext),
          PersonalDetails(title: 'Messages', title2:'On: Email and Push', buttonText:'Edit', onTap: (){},



          ) ],
      ),
    );
  }
}
