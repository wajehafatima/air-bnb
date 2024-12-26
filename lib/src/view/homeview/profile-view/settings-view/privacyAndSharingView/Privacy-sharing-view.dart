import 'package:air_bnb/src/view/homeview/profile-view/settings-view/privacyAndSharingView/privacyOptionList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../controller/components/primaryText.dart';
import '../../../../../controller/constants/colors/appColors.dart';
class Privacysharingview extends StatefulWidget {
  const Privacysharingview({super.key});

  @override
  State<Privacysharingview> createState() => _PrivacysharingviewState();
}

class _PrivacysharingviewState extends State<Privacysharingview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor:appColors.whiteBG,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Primarytext(text: 'Privacy and sharing', fontSize: 25.sp,
              fontWeight: FontWeight.w400, textColor: appColors.blacktext),
            Primarytext(text: 'Manage your data, third-party tools, and sharing Settings', fontSize: 12.sp,
                fontWeight: FontWeight.w500, textColor: appColors.blacktext),
            SizedBox(height: 20.h,),
           Privacyoptionlist(text1: 'Request your personal data',
               text2: 'we\'ll create a file for you to download your personal data'),
            SizedBox(height: 10.h,),
            Divider(),
            Privacyoptionlist(text1: 'Delete your account', text2: 'This will permanently delete your account, and your data in accordance with applicable law.')

          ],),
      ),
    );
  }
}
