import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../src/controller/components/primaryText.dart';
import '../../../../src/controller/constants/colors/appColors.dart';
class Cancellationview extends StatefulWidget {
  const Cancellationview({super.key});

  @override
  State<Cancellationview> createState() => _CancellationviewState();
}

class _CancellationviewState extends State<Cancellationview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
appBar: AppBar(),
    );
  }
}
