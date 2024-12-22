import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/profileDetails.dart';
import 'package:air_bnb/src/view/homeview/profile-view/profileView.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../controller/constants/colors/appColors.dart';
class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  State<PaymentsView> createState() => _PaymentsViewState();
}

class _PaymentsViewState extends State<PaymentsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Profileview()));
        }, icon:Icon(Icons.arrow_back)),

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Primarytext(text:'Payments & Payouts', fontSize:25.sp ,
           fontWeight:FontWeight.w500, textColor:appColors.blacktext),
           SizedBox(height: 10.h,),
           Primarytext(text: 'Traveling', fontSize: 13.sp, fontWeight: FontWeight.w300,
            textColor: appColors.blacktext),
          SizedBox(height: 10.h,),
          ProfileDetails(icon: Icons.money, text: 'payment methods', onTap: (){}),
          ProfileDetails(icon: Icons.payments_sharp, text: 'Your payments', onTap: (){}),
          ProfileDetails(icon: Icons.card_membership_sharp, text: 'Credit & coupons', onTap: (){}),
          SizedBox(height: 10.h,),
          
          SizedBox(height: 10.h,),
          Primarytext(text: 'Hosting', fontSize: 13.sp, fontWeight: FontWeight.w300,
            textColor: appColors.blacktext),
SizedBox(height: 10.h,),
 ProfileDetails(icon: Icons.payments_sharp, text: 'Payout methods', onTap: (){}),
  ProfileDetails(icon: Icons.payment_outlined, text: 'Transaction history', onTap: (){}),
   ProfileDetails(icon: Icons.attach_money, text: 'Donations', onTap: (){}),
            
        ],),
      ),
    );
  }
}