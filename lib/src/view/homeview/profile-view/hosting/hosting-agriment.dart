import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/underlinedtext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/hosting/hosting-starting-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HostingAgreementScreen extends StatefulWidget {
  const HostingAgreementScreen({super.key});

  @override
  State<HostingAgreementScreen> createState() => _HostingAgreementScreenState();
}

class _HostingAgreementScreenState extends State<HostingAgreementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90.h,
          ),
          Primarytext(
              text: 'Our Community Commitment',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600, // Semi-bold
              textColor: appColors.blacktext),
          SizedBox(height: 20.h),
          Primarytext(
              text: 'Xobnb is a community where anyone can belong',
              fontSize: 22.sp, // Extra large text
              fontWeight: FontWeight.w700, // Full bold
              textColor: appColors.blacktext),
          SizedBox(height: 10.h),
          Primarytext(
              text:
                  'To ensure this, we are asking you to commit to the following:',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold, // Non-bold
              textColor: appColors.blacktext),
          SizedBox(height: 20.h),
          Primarytext(
              text:
                  'I agree to treat everyone in the Xobnb community---regardless of their race, religion, origin, ethnicity, skin color, disability, sex, gender identity, sexual orientation or age---with respect, and without judgment or bias.',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600, // Normal bold
              textColor: appColors.blacktext),
          SizedBox(height: 30.h),
          Custombutton(
            text: 'Agree & Continue',
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoDialogRoute(
                      builder: (context) => GettingStartedScreen(),
                      context: context));
            },
            color: appColors.secondary,
            textColor: appColors.whiteBG,
            // width: 120.w,
          ),
          Custombutton(
            text: 'Decline',
            onTap: () {
              Navigator.pop(context);
            },
            color: appColors.blacktext,
            textColor: appColors.whiteBG,
            //   width: 120.w,
          ),
        ],
      ),
    ));
  }
}
