import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../controller/constants/colors/appColors.dart';

class Accessbility extends StatefulWidget {
  const Accessbility({super.key});

  @override
  State<Accessbility> createState() => _AccessbilityState();
}

class _AccessbilityState extends State<Accessbility> {
  bool _isMapZoomControlEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Primarytext(text: 'Accessibility', fontSize: 25.sp,
              fontWeight:FontWeight.w500, textColor: appColors.blacktext),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Primarytext(
                      text: 'Map zoom controls',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      textColor: appColors.blacktext,
                    ),
                    Primarytext(
                      text: 'Zoom in and out with dedicated buttons',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                      textColor: appColors.blacktext,
                    ),
                  ],
                ),
                Switch(
                  value: _isMapZoomControlEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      _isMapZoomControlEnabled = value;
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