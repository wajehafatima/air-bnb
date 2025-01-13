import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/hosting/hosting-form-filling-views/hosting-main-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GettingStartedScreen extends StatefulWidget {
  const GettingStartedScreen({super.key});

  @override
  State<GettingStartedScreen> createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: appColors.blacktext),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Primarytext(text:
              "It's easy to get started on Roomoree",

                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                textColor: appColors.blacktext,
              ),

            SizedBox(height: 30.h),
            ListTile(
              leading: Primarytext(text:
                '1',

                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),

              title: Primarytext(text:
                'Tell us about your place',

                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),

              subtitle: Primarytext(text:
                'Share some basic info, like where it is and how many guests can stay',

                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.grey,
                ),

              trailing: Icon(Icons.bed, color: appColors.blacktext),
            ),
            Divider(),
            ListTile(
              leading: Primarytext(text:
                '2',

                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),

              title: Primarytext(text:
                'Make it stand out',

                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),

              subtitle: Primarytext(text:
                "Add 5 or more photos plus a title and description--we'll help you out",

                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.grey,
                ),

              trailing: Icon(Icons.image, color: appColors.blacktext),
            ),
            Divider(),
            ListTile(
              leading: Primarytext(text:
                '3',

                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),

              title: Primarytext(text:
                'Finish up and publish',

                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),
              subtitle: Primarytext(text:
                'Choose a starting price, verify a few details, then publish your listing',

                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.grey,
                ),

              trailing: Icon(Icons.check_circle, color: appColors.blacktext),
            ),
            Divider(),
            Spacer(),
            Custombutton(
              text: 'Get Started',
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoDialogRoute(
                        builder: (context) => ExpandedScreenExample(),
                        context: context));
              },
              color: appColors.secondary,
              textColor: appColors.whiteBG,
              width: double.infinity,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
