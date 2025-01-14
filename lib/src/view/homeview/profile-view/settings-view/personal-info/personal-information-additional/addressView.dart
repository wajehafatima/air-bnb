import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
class Addressview extends StatefulWidget {
  const Addressview({super.key});

  @override
  State<Addressview> createState() => _AddressviewState();
}

class _AddressviewState extends State<Addressview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Address', fontSize: 18.sp, fontWeight: FontWeight.w500,
            textColor: appColors.blacktext),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);

        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [],),
    );
  }
}
