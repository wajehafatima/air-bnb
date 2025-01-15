import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/PERSONALiNFO-WIDGETS/CustomTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Legalnameview extends StatefulWidget {
  const Legalnameview({super.key});

  @override
  State<Legalnameview> createState() => _LegalnameviewState();
}

class _LegalnameviewState extends State<Legalnameview> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  bool isButtonEnabled = false;

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    // Add listeners to the text controllers to track changes
    _firstNameController.addListener(_updateButtonState);
    _lastNameController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Primarytext(
          text: 'Make sure that this matches the name on your government ID ',
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
          textColor: appColors.blacktext,
        ),
        SizedBox(height: 10.h),
        CustomTextFormField(
          labelText: 'First name on ID',
          controller: _firstNameController,
        ),
        SizedBox(height: 10.h),
        CustomTextFormField(
          labelText: 'Last name on ID',
          controller: _lastNameController,
        ),
        SizedBox(height: 20.h),
        Custombutton(
          text: 'Save',
          onTap: isButtonEnabled
              ? () {
            // Define what happens when the button is tapped
          }
              : () {}, // Provide a no-op function when disabled
          width: 150.w,
          color: isButtonEnabled ? appColors.blacktext : appColors.grey,
          textColor: appColors.whiteBG,
        ),
      ],
    );
  }
}
