import 'package:air_bnb/src/controller/components/personalDetails-list.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersAndUpdatesScreen extends StatefulWidget {
  const OffersAndUpdatesScreen({super.key});

  @override
  State<OffersAndUpdatesScreen> createState() => _OffersAndUpdatesScreenState();
}

class _OffersAndUpdatesScreenState extends State<OffersAndUpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Primarytext(
                text: 'Booking Reminders & Offers',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(
                text:
                    'Get personalized notifications about your bookings, reviews, and payments.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext),
            // Personalized booking notifications (Automated reminders)
            PersonalDetails(
              title: 'Booking Reminders',
              title2: 'On: Email and Push',
              buttonText: 'Edit',
              onTap: () {},
            ),
            PersonalDetails(
              title: 'Payment Notifications',
              title2: 'On: Email and Push',
              buttonText: 'Edit',
              onTap: () {},
            ),
            SizedBox(height: 20.h),
            Primarytext(
                text: 'Roomoree Updates & Alerts',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(
                text:
                    'Stay up to date with reports, cancellations, and other important alerts.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext),
            // Notifications for reports, cancellations, and review requests
            PersonalDetails(
              title: 'Booking Reports',
              title2: 'On: Email and Push',
              buttonText: 'Edit',
              onTap: () {},
            ),
            PersonalDetails(
              title: 'Cancellation Alerts',
              title2: 'On: Email and Push',
              buttonText: 'Edit',
              onTap: () {},
            ),
            PersonalDetails(
              title: 'Review Requests',
              title2: 'On: Email and Push',
              buttonText: 'Edit',
              onTap: () {},
            ),
            SizedBox(height: 20.h),
            Primarytext(
                text: 'Unsubscribe from all notifications',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(
                text:
                    'You\'ll continue to get notifications about account activity.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext),
            PersonalDetails(
              title: 'All Notifications',
              title2: 'On: Email and Push',
              buttonText: 'Edit',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
