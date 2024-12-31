import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../src/controller/components/primaryText.dart';
import '../../../../src/controller/constants/colors/appColors.dart';
class Refundview extends StatefulWidget {
  const Refundview({super.key});

  @override
  State<Refundview> createState() => _RefundviewState();
}

class _RefundviewState extends State<Refundview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,

    );
  }
}
