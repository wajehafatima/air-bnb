import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';
class Aboutview extends StatefulWidget {
  const Aboutview({super.key});

  @override
  State<Aboutview> createState() => _AboutviewState();
}

class _AboutviewState extends State<Aboutview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'About', fontSize: 25.sp, fontWeight:FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
