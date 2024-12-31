import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';
class Calenderview extends StatefulWidget {
  const Calenderview({super.key});

  @override
  State<Calenderview> createState() => _CalenderviewState();
}

class _CalenderviewState extends State<Calenderview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Calender', fontSize: 25.sp, fontWeight:FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
