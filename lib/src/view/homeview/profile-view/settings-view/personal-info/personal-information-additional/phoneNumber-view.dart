import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';

class Phonenumberview extends StatefulWidget {
  const Phonenumberview({super.key});

  @override
  State<Phonenumberview> createState() => _PhonenumberviewState();
}

class _PhonenumberviewState extends State<Phonenumberview> {
  String selectedCountry = "United States";
  String selectedCode = "+1";

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(
            text: 'For notifications, reminders, and help logging in.',
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              showCountryPicker(
                context: context,
                showPhoneCode: true,
                onSelect: (Country country) {
                  setState(() {
                    selectedCountry = country.name;
                    selectedCode = "+${country.phoneCode}";
                  });
                },
              );
            },
            child: Container(
              height: 40.h,
              padding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: appColors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Primarytext(
                        text: 'Country/region',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w300,
                        textColor: appColors.grey,
                      ),
                      SizedBox(height: 3.h),
                      Primarytext(
                        text: '$selectedCountry ($selectedCode)',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        textColor: appColors.blacktext,
                      ),
                    ],
                  ),
                  const Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: appColors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: appColors.grey),
              ),
              hintText: 'Phone number',
              border: InputBorder.none,
            ),
          ),
          SizedBox(height: 5.h,),
          Primarytext(text: 'We\'ll text you a code to verify your number. standard message and data rates apply',
              fontSize: 12.sp, fontWeight: FontWeight.w300, textColor:appColors.blacktext),
          SizedBox(height: 20,),
          Custombutton(text: 'Continue', onTap:(){})
        ],

    );
  }
}
