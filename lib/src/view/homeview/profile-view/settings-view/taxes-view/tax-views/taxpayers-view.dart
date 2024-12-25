import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/underlinedtext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TaxPayersScreen extends StatefulWidget {
  const TaxPayersScreen({super.key});

  @override
  State<TaxPayersScreen> createState() => _TaxPayersScreenState();
}

class _TaxPayersScreenState extends State<TaxPayersScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Primarytext(
              text: 'Taxpayer information',
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext),
          Row(children: [
            Primarytext(
              text: 'Tax information is required for most countries/regions.',
              fontSize: 10.sp,
              fontWeight: FontWeight.w300,
              textColor: appColors.blacktext,
            ),
            //   UnderlinedText(text: 'Learn more', onPressed: () {}),
          ]),
          SizedBox(height: 10.h),
          Custombutton(
            text: 'Add tax info',
            onTap: () {},
            color: appColors.blacktext,
            textColor: appColors.whiteBG,
            width: 130.w,
          ),
          SizedBox(height: 30.h),
          Primarytext(
              text: 'Value Added Tax(VAT)',
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext),
          Row(children: [
            Primarytext(
                text: 'If you are VAT-registered, please add your VAT ID.',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext),
            // UnderlinedText(text: 'Learn more', onPressed: () {}),
          ]),
          SizedBox(
            height: 10.h,
          ),
          Custombutton(
            text: 'Add VAT ID number',
            onTap: () {},
            color: appColors.blacktext,
            textColor: appColors.whiteBG,
            width: 180.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          Primarytext(
              text: 'Need help?',
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext),
          Row(
            children: [
              Primarytext(
                  text: 'Get answers to questions about taxes in our.',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w300,
                  textColor: appColors.blacktext),
              UnderlinedText(
                text: 'Help Center.',
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
