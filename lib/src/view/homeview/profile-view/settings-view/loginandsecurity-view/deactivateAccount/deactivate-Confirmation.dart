import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/constants/colors/appColors.dart';
class Deactivateconfirmation extends StatefulWidget {
  const Deactivateconfirmation({super.key});

  @override
  State<Deactivateconfirmation> createState() => _DeactivateconfirmationState();
}

class _DeactivateconfirmationState extends State<Deactivateconfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.arrow_back_ios),

        ),
        backgroundColor: appColors.whiteBG,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(children: [
          Primarytext(text: 'Deactivate account?', fontSize: 18.sp, fontWeight: FontWeight.w600,
              textColor: appColors.blacktext),
          SizedBox(height: 5.h,),
          Primarytext(text: 'user@gmail.com', fontSize: 12.sp, fontWeight: FontWeight.w300,
              textColor: appColors.blacktext),

        ],),
      ),
    );
  }
}
