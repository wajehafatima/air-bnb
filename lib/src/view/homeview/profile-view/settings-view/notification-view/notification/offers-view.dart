// Separate StatefulWidget for Offers & Updates Tab
import 'package:air_bnb/src/controller/components/personalDetails-list.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersAndUpdatesScreen extends StatefulWidget {
  const OffersAndUpdatesScreen({super.key});

  @override
  State<OffersAndUpdatesScreen> createState() => _OffersAndUpdatesScreenState();
}

class _OffersAndUpdatesScreenState extends State<OffersAndUpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: 20.h,),
          Primarytext(text: 'Travel tips and offers', fontSize: 20.sp,
              fontWeight: FontWeight.w500, textColor: appColors.blacktext),
            Primarytext(text: 'Inspire your next trip with personalized recommendations and special offers',
                fontSize: 12.sp, fontWeight: FontWeight.w300 ,textColor: appColors.blacktext),
      
            PersonalDetails(title: 'Inspiraion and offers', title2: 'On: Email and Push',
                buttonText: 'Edit', onTap: (){}),
      
            PersonalDetails(title: 'Trip planning', title2: 'On: Email and Push',
                buttonText: 'Edit', onTap: (){}),
            SizedBox(height: 20.h,),
            Primarytext(text: 'Airbnb Updates', fontSize:20.sp, fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(text: 'Stay up date on the latest news from Airbnb, and let us know how we can improve ', fontSize: 12.sp,
                fontWeight: FontWeight.w300, textColor: appColors.blacktext),
            PersonalDetails(title: 'News and programs', title2: 'On: Email and Push', buttonText: 'Edit', onTap:(){}),
            PersonalDetails(title: 'Feedback', title2:'On: Email and Push', buttonText: 'Edit', onTap:(){}),
            PersonalDetails(title: 'Travel regulations', title2:'On: Email and Push', buttonText: 'Edit', onTap: (){}),
            SizedBox(height: 20.h,),
            Primarytext(text: 'Unsubscribe from all offers and updates', fontSize: 20.sp,
                fontWeight: FontWeight.w500, textColor: appColors.blacktext),
            Primarytext(text: 'You\'ll continue to get notifications about your account activity', fontSize:12.sp,
                fontWeight: FontWeight.w300, textColor: appColors.blacktext),
            PersonalDetails(title: 'All offers and updates', title2:'On: Email and Push', buttonText:'Edit', onTap:(){}),
        ],),
      ),
    );
  }
}
