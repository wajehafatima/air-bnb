import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';
class Reviewratingview extends StatefulWidget {
  const Reviewratingview({super.key});

  @override
  State<Reviewratingview> createState() => _ReviewratingviewState();
}

class _ReviewratingviewState extends State<Reviewratingview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Review and ratings', fontSize: 25.sp, fontWeight:FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
