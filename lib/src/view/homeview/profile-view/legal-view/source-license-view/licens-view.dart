import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../controller/components/primaryText.dart';
import '../../../../../controller/constants/colors/appColors.dart';
import 'lisenceSource-Widget/lisenceWidget.dart';
class Licensview extends StatefulWidget {
  const Licensview({super.key});

  @override
  State<Licensview> createState() => _LicensviewState();
}

class _LicensviewState extends State<Licensview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),

      ),
        title: Primarytext(text: 'Open Source license', fontSize: 25.sp,
            fontWeight: FontWeight.w500,
            textColor:appColors.blacktext),
        backgroundColor: appColors.whiteBG,


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start
            ,
            children: [
            LicenseWidget(text:'ASM based accessors helper used by json-smart' , onTap: () {  },)
          ],),
        ),
      ),
    );
  }
}
