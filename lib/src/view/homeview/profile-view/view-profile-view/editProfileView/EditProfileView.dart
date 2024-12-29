import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/view-profile-view/editProfileView/edit-profile-widget/edit-profilewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editprofileview extends StatefulWidget {
  const Editprofileview({super.key});

  @override
  State<Editprofileview> createState() => _EditprofileviewState();
}

class _EditprofileviewState extends State<Editprofileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Edit profile',
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.cancel_outlined),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 70.r,
                          backgroundImage: AssetImage(appImages.dp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 110.h),
                        child: Center(
                          child: Container(
                            width: 45.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              color: appColors.whiteBG,
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [BoxShadow(blurRadius: 2)],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 12.sp,
                                  color: appColors.blacktext,
                                ),
                                SizedBox(width: 2.w),
                                Primarytext(
                                  text: 'Add',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  textColor: appColors.blacktext,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.h),
                      Primarytext(
                        text: 'Your profile',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        textColor: appColors.blacktext,
                      ),
                      SizedBox(height: 5.h),
                      Primarytext(
                        text:
                        'The information you share will be used across Xobnb to help other guests and hosts get to know you.',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                        textColor: appColors.blacktext,
                      ),
                      SizedBox(height: 20.h),
                     EditProfileRow(icon: Icons.work_outline_rounded, text: 'My work', onTap: (){
                       _showMyWorkBottomSheet(context);
                     }),
                      EditProfileRow(icon: Icons.public_rounded, text: 'Where I\'ve always wanted to go', onTap: (){}),
                      EditProfileRow(icon: Icons.handyman_rounded, text: 'My most useless skills', onTap: (){}),
                      EditProfileRow(icon: Icons.lightbulb_outline, text: 'My fun fact', onTap: (){}),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Custombutton(
            text: 'Done',
            onTap: () {},
            textColor: appColors.whiteBG,
            color: appColors.blacktext,
          ),
        ],
      ),
    );
  }

  void _showMyWorkBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: appColors.whiteBG,
      // Set the background color
      isScrollControlled: true,
      // Allow the bottom sheet to adjust its height
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 20.h,
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom, // Adjust for keyboard
          ),
          child: SingleChildScrollView( // Makes the bottom sheet scrollable
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
                ),
                SizedBox(height: 10.h),
                Primarytext(
                  text: 'what do you do for work?',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 5.h),
                Primarytext(
                  text: 'Tell us what your Profession is.If you don\'t have a traditional job, tell us your life\'s calling.',
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w300,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 20.h),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'My Work',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: appColors.blacktext),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appColors.blacktext),
                      borderRadius: BorderRadius.circular(10.r),
                    )

                  ),
                ),
                SizedBox(height: 20.h),
                Divider(),
                Custombutton(
                  text: 'Save',
                  onTap: () {

                    Navigator.pop(context);
                  },
                  textColor: appColors.whiteBG,
                  color: appColors.blacktext,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
