import 'package:air_bnb/src/controller/components/custombutton.dart';
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
            Text(
              "It's easy to get started on Xobnb",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: appColors.blacktext,
              ),
            ),
            SizedBox(height: 30.h),
            ListTile(
              leading: Text(
                '1',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: appColors.blacktext,
                ),
              ),
              title: Text(
                'Tell us about your place',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: appColors.blacktext,
                ),
              ),
              subtitle: Text(
                'Share some basic info, like where it is and how many guests can stay',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: appColors.grey,
                ),
              ),
              trailing: Icon(Icons.bed, color: appColors.blacktext),
            ),
            Divider(),
            ListTile(
              leading: Text(
                '2',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: appColors.blacktext,
                ),
              ),
              title: Text(
                'Make it stand out',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: appColors.blacktext,
                ),
              ),
              subtitle: Text(
                "Add 5 or more photos plus a title and description--we'll help you out",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: appColors.grey,
                ),
              ),
              trailing: Icon(Icons.image, color: appColors.blacktext),
            ),
            Divider(),
            ListTile(
              leading: Text(
                '3',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: appColors.blacktext,
                ),
              ),
              title: Text(
                'Finish up and publish',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: appColors.blacktext,
                ),
              ),
              subtitle: Text(
                'Choose a starting price, verify a few details, then publish your listing',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: appColors.grey,
                ),
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
