import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../src/controller/components/primaryText.dart';
import '../../../../src/controller/constants/colors/appColors.dart';
class Chartsview extends StatefulWidget {
  const Chartsview({super.key});

  @override
  State<Chartsview> createState() => _ChartsviewState();
}

class _ChartsviewState extends State<Chartsview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Charts', fontSize: 25.sp, fontWeight:FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
