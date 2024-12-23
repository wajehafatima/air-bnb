import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/profileDetails.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/taxes-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profileview extends StatefulWidget {
  const Profileview({super.key});

  @override
  State<Profileview> createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Primarytext(
                      text: 'Profile',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.blacktext),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: appColors.blacktext,
                        size: 30,
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage(appImages.dp),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    children: [
                      Primarytext(
                          text: 'Username',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          textColor: appColors.blacktext),
                      Primarytext(
                          text: 'Show profile',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w300,
                          textColor: appColors.blacktext),
                    ],
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 70.h,
                width: 380.w,
                decoration: BoxDecoration(
                    color: appColors.whiteBG,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(blurRadius: 2, color: appColors.grey),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Primarytext(
                              text: 'Airbnb your home',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: appColors.blacktext,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Primarytext(
                                text:
                                    'It\'s easy to start hosting and earn extra income',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w300,
                                textColor: appColors.blacktext)
                          ],
                        ),
                      ),
                      Image.asset(
                        appIcons.home,
                        width: 60.w,
                        height: 60.h,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 10.h,
              ),
              Primarytext(
                  text: 'Settings',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext),
              SizedBox(
                height: 20.h,
              ),
              ProfileDetails(
                icon: Icons.person_outline_rounded,
                text: 'Personal Information',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.security,
                text: 'Login and Security',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.payments_outlined,
                text: 'Payments and payouts',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.settings_applications_outlined,
                text: 'Accessibility',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.copy_rounded,
                text: 'Taxes',
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoDialogRoute(
                          builder: (context) => TaxesView(), context: context));
                },
              ),
              ProfileDetails(
                icon: Icons.g_translate,
                text: 'Translation',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.notifications_outlined,
                text: 'Notifications',
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoDialogRoute(
                          builder: (context) => NotificationView(),
                          context: context));
                },
              ),
              ProfileDetails(
                icon: Icons.lock_outline,
                text: 'Privacy and Sharing',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.card_travel,
                text: 'Travel for work',
                onTap: () {},
              ),
              SizedBox(height: 15.h),
              Primarytext(
                  text: 'Hosting',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext),
              SizedBox(
                height: 20.h,
              ),
              ProfileDetails(
                icon: Icons.home_outlined,
                text: 'List your space',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.add_home_rounded,
                text: 'Learn about hosting',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.groups_outlined,
                text: 'Host an experience',
                onTap: () {},
              ),
              SizedBox(height: 15.h),
              Primarytext(
                  text: 'Support',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext),
              SizedBox(
                height: 20.h,
              ),
              ProfileDetails(
                icon: Icons.question_mark,
                text: 'Visit help Center',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.health_and_safety_outlined,
                text: 'Get the help with a security issue',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.mode_of_travel_outlined,
                text: 'How Airbnb works',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.edit_outlined,
                text: 'Give us feedback',
                onTap: () {},
              ),
              SizedBox(height: 15.h),
              Primarytext(
                  text: 'Legal',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext),
              SizedBox(
                height: 20.h,
              ),
              ProfileDetails(
                icon: Icons.menu_book_outlined,
                text: 'Terms of services',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.menu_book_outlined,
                text: 'Privacy Policy',
                onTap: () {},
              ),
              ProfileDetails(
                icon: Icons.menu_book_outlined,
                text: 'Open source licenses',
                onTap: () {},
              ),
              SizedBox(
                height: 8.h,
              ),
              Custombutton(
                text: 'Logout',
                onTap: () {},
                width: 60.w,
                color: appColors.whiteBG,
                textColor: appColors.blacktext,
              ),
              SizedBox(
                height: 8.h,
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
