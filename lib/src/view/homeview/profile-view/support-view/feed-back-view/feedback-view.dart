import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primarytext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Feedbackview extends StatefulWidget {
  const Feedbackview({super.key});

  @override
  State<Feedbackview> createState() => _FeedbackviewState();
}

class _FeedbackviewState extends State<Feedbackview> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = 'Experiences';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back)),
      ),
      backgroundColor: appColors.whiteBG,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: 10.h,),
            Primarytext(
              text: 'Share your feedback',
              fontSize: 25.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext,
            ),
            Primarytext(
              text:
              'Thanks for sending us your ideas, issues, or appreciation. We can\'t respond individually, but we\'ll pass it on to the teams who are working to help make Airbnb better for everyone.',
              fontSize: 10.sp,
              fontWeight: FontWeight.w300,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 30.h),
            Primarytext(
                text: 'Whats your feedback about?',
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext),
            DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: appColors.blacktext),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  value: _selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      child: Primarytext(
                        text: 'Experiences',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        textColor: appColors.blacktext,
                      ),
                      value: 'Experiences',
                    ),
                    DropdownMenuItem(
                      child: Primarytext(
                        text: 'Hosting',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        textColor: appColors.blacktext,
                      ),
                      value: 'Hosting',
                    ),
                    DropdownMenuItem(
                      child: Primarytext(
                        text: 'Traveling',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        textColor: appColors.blacktext,
                      ),
                      value: 'Traveling',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Divider(),
            SizedBox(height: 10.h),
            Primarytext(
                text: 'Need to get in touch',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(
                text:
                'we\'ll start with some questions and get you to the right place.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                textColor: appColors.blacktext),
            SizedBox(height: 10.h),
            Custombutton(
                text: 'Contact us',
                onTap: () {},
                width: 90.w,
                color: appColors.whiteBG,
                textColor: appColors.blacktext),
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                SizedBox(height: 10.h),
                Custombutton(
                    text: 'Submit',
                    onTap: () {},
                    width: 70.w,
                    textColor: appColors.whiteBG,
                    color: appColors.grey)
              ],
            )
          ],
        ),
      ),
    );
  }
}