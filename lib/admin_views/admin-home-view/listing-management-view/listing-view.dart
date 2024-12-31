import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class Listingview extends StatefulWidget {
  const Listingview({super.key});

  @override
  State<Listingview> createState() => _ListingviewState();
}

class _ListingviewState extends State<Listingview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
            text: 'Listing management',
            fontSize: 25.sp,
            fontWeight: FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}
