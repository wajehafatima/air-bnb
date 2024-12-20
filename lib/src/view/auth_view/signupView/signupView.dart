import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/linkButtons.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  String selectedCountry = "United States";
  String selectedCode = "+1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.whiteBG,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align elements to start
              children: [
                SizedBox(height: 30.h),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10), // Icon aligned to left
                  child: Icon(Icons.cancel),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30, bottom: 20),
                  child: Primarytext(
                    text: 'Log in or sign up to Airbnb',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    textColor: appColors.blacktext,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: GestureDetector(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: appColors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: appColors.grey)),
                        hintText: 'Phone number',
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: Primarytext(
                      text:
                          'we\'ll call you to confirm your number. Standard message and data rates apply.',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.blacktext),
                ),
                Custombutton(text: 'Continue', onTap: () {}),
                Center(
                    child: Primarytext(
                        text: 'Or',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                        textColor: appColors.grey)),
                Linkbuttons(
                    imagePath: appIcons.mail,
                    text: 'Continue with Email',
                    onTap: () {}),
                Linkbuttons(
                    imagePath: appIcons.facebook,
                    text: 'Continue with Facebook',
                    onTap: () {}),
                Linkbuttons(
                    imagePath: appIcons.google,
                    text: 'Continue with Google',
                    onTap: () {}),
                Linkbuttons(
                    imagePath: appIcons.apple,
                    text: 'Continue with Apple',
                    onTap: () {}),
              ]),
        ));
  }
}
