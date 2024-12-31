import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';
class Adminaccountsview extends StatefulWidget {
  const Adminaccountsview({super.key});

  @override
  State<Adminaccountsview> createState() => _AdminaccountsviewState();
}

class _AdminaccountsviewState extends State<Adminaccountsview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Conversation monitoring', fontSize: 25.sp,
            fontWeight:FontWeight.w500, textColor: appColors.blacktext),
      ),
    );
  }
}
