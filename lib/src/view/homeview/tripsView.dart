import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Tripsview extends StatefulWidget {
  const Tripsview({super.key});

  @override
  State<Tripsview> createState() => _TripsviewState();
}

class _TripsviewState extends State<Tripsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Primarytext(text: 'trips', fontSize: 25.sp, fontWeight: FontWeight.w600, textColor: appColors.blacktext),

          ],
        ),
      ),
    );
  }
}
