import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';
class Analyticsreportsview extends StatefulWidget {
  const Analyticsreportsview({super.key});

  @override
  State<Analyticsreportsview> createState() => _AnalyticsreportsviewState();
}

class _AnalyticsreportsviewState extends State<Analyticsreportsview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Analytics and report', fontSize: 25.sp, fontWeight:FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
