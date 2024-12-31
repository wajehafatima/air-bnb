import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../src/controller/components/primaryText.dart';
import '../../../../src/controller/constants/colors/appColors.dart';
class Hostview extends StatefulWidget {
  const Hostview({super.key});

  @override
  State<Hostview> createState() => _HostviewState();
}

class _HostviewState extends State<Hostview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Hosts', fontSize: 25.sp, fontWeight:FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
