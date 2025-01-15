import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/changePassword/reuseable-textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/custombutton.dart';
import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';

class Changepasswordview extends StatefulWidget {
  const Changepasswordview({super.key});

  @override
  State<Changepasswordview> createState() => _ChangepasswordviewState();
}

class _ChangepasswordviewState extends State<Changepasswordview> {
  // Controllers for text fields
  final TextEditingController currentPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Primarytext(
          text: 'Current Password',
          fontSize: 11.sp,
          fontWeight: FontWeight.w300,
          textColor: appColors.blacktext,
        ),
        SizedBox(height: 5.h),
        ReusableTextField(
          controller: currentPasswordController,

        ),
        SizedBox(height: 5.h),
        Primarytext(
          text: 'Need a new password?',
          fontSize: 11.sp,
          fontWeight: FontWeight.w300,
          textColor: appColors.linkBlue,
        ),
        SizedBox(height: 5.h),
        Primarytext(
          text: 'New password',
          fontSize: 11.sp,
          fontWeight: FontWeight.w300,
          textColor: appColors.blacktext,
        ),
        SizedBox(height: 5.h),
        ReusableTextField(
          controller: newPasswordController,

        ),
        SizedBox(height: 5.h),
        Primarytext(
          text: 'Confirm password',
          fontSize: 11.sp,
          fontWeight: FontWeight.w300,
          textColor: appColors.blacktext,
        ),
        SizedBox(height: 5.h),
        ReusableTextField(
          controller: confirmPasswordController,

        ),
        SizedBox(height: 15.h),

        Custombutton(
          text: 'Update password',
          onTap: () {

          },
          width: 130.w,
          color: appColors.linkBlue,
        ),
      ],
    );
  }
}
