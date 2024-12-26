import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/profileView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../controller/components/primaryText.dart';

class TranslationView extends StatefulWidget {
  const TranslationView({super.key});

  @override
  State<TranslationView> createState() => _TranslationViewState();
}

class _TranslationViewState extends State<TranslationView> {
  bool _isTranslationEnabled = true;

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
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(
              text: 'Translation',
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 10.h),
            Primarytext(
              text: 'Automatically translate the reviews, descriptions, and messages written by guests and hosts to English. Turn this feature off if you\'d like to show the original language.',
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Primarytext(
                  text: 'Translation',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext,
                ),
                Switch(
                  value: _isTranslationEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      _isTranslationEnabled = value;
                    });
                  },
                  activeColor: appColors.blacktext,
                  inactiveThumbColor: appColors.grey,
                  inactiveTrackColor: appColors.whiteBG,

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}