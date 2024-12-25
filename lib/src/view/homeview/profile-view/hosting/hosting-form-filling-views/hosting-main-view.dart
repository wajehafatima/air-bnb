import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/hosting/hosting-form-filling-views/1st-option-views/place-option-view/place-option-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/hosting/hosting-form-filling-views/1st-option-views/type-place-view/type-place-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/hosting/hosting-widgets/place-option-wdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedScreenExample extends StatefulWidget {
  const ExpandedScreenExample({super.key});

  @override
  State<ExpandedScreenExample> createState() => _ExpandedScreenExampleState();
}

class _ExpandedScreenExampleState extends State<ExpandedScreenExample> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 15,
            child: Center(
              child: Text(
                'Header Section',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: appColors.blacktext,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 70,
            child: IndexedStack(
              index: currentIndex,
              children: [
                SelectPlace(),
                GuestTypePlace(),
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Content 3',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = (currentIndex + 1) % 3;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appColors.blacktext,
                    foregroundColor: appColors.whiteBG,
                  ),
                  child: Text('Next'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
