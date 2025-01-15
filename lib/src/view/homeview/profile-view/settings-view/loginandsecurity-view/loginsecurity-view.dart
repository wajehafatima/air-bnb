import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/deactivateAccount/Deactivate-account-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/changePassword/changePassword-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../controller/components/primaryText.dart';
import '../../../../../controller/components/securityPolicy-login.dart';
import '../../../../../controller/constants/colors/appColors.dart';
import '../../profileView.dart';

class LogInSecurity extends StatefulWidget {
  const LogInSecurity({super.key});

  @override
  State<LogInSecurity> createState() => _LogInSecurityState();
}

class _LogInSecurityState extends State<LogInSecurity> {
  bool isPasswordExpanded = false;

  void togglePasswordExpansion() {
    setState(() {
      isPasswordExpanded = !isPasswordExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Profileview()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Primarytext(
                text: 'Login&Security',
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 30.h),
              Primarytext(
                text: 'Login',
                fontSize: 27.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Primarytext(
                        text: 'Password',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        textColor: appColors.blacktext,
                      ),
                      if (!isPasswordExpanded)
                        Primarytext(
                          text: 'Updated 5 days ago',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          textColor: appColors.blacktext,
                        ),
                    ],
                  ),
                  TextButton(
                    onPressed: togglePasswordExpansion,
                    child: Primarytext(
                      text: isPasswordExpanded ? 'Cancel' : 'Update',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.linkBlue,
                    ),
                  ),
                ],
              ),
              if (isPasswordExpanded)
        Changepasswordview()     ,        //////////
                ///////
                //////
                //////
                /////
        
              SizedBox(height: 10.h),
              SecurityPolicyLogin(),
              SizedBox(height: 20.h),
              Primarytext(
                text: 'Account',
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Primarytext(
                    text: 'Deactivate your account',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    textColor: appColors.blacktext,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Deactivateaccountview()),
                      );
                    },
                    child: Primarytext(
                      text: 'Deactivate',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.secondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
