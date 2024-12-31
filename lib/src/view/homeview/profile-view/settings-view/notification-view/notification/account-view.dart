import 'package:air_bnb/src/controller/components/personalDetails-list.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Primarytext(
            text: 'Account Activity and Policies',
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            textColor: appColors.blacktext,
          ),
          Primarytext(
            text:
                'Confirm your booking and account activity, and learn about important Airbnb policies.',
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 15.h),
          // Notifications for account activity
          PersonalDetails(
            title: 'Account Activity Alerts',
            title2: 'On: Email and Push',
            buttonText: 'Edit',
            onTap: () {},
          ),
          SizedBox(height: 5.h),
          PersonalDetails(
            title: 'Booking Policies Alerts',
            title2: 'On: Email and Push',
            buttonText: 'Edit',
            onTap: () {},
          ),
          SizedBox(height: 20.h),
          Primarytext(
            text: 'Reminders & Notifications',
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            textColor: appColors.blacktext,
          ),
          Primarytext(
            text:
                'Get important reminders about your reservations, listings, and account activity.',
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            textColor: appColors.blacktext,
          ),
          // Automated reminders for bookings, reviews, and verification processes
          PersonalDetails(
            title: 'Booking Reminders',
            title2: 'On: Email and Push',
            buttonText: 'Edit',
            onTap: () {},
          ),
          SizedBox(height: 20.h),
          Primarytext(
            text: 'Guest and Host Messages',
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            textColor: appColors.blacktext,
          ),
          // Notifications for guest and host communication
          PersonalDetails(
            title: 'Messages Alerts',
            title2: 'On: Email and Push',
            buttonText: 'Edit',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
