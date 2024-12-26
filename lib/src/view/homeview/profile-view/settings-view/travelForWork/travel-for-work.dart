import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Travelforwork extends StatefulWidget {
  const Travelforwork({super.key});

  @override
  State<Travelforwork> createState() => _TravelforworkState();
}

class _TravelforworkState extends State<Travelforwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title:Primarytext(text: 'Travel for work', fontSize: 15.sp,
            fontWeight: FontWeight.w500, textColor: appColors.blacktext),
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.arrow_back),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: 10.h,),
          Primarytext(text: 'Try Airbnb for work', fontSize: 25.sp,
              fontWeight:FontWeight.w500, textColor: appColors.blacktext),
          Primarytext(text: 'Add your work email to unlock extra perks for business trips.', fontSize: 12.sp,
              fontWeight:FontWeight.w400, textColor: appColors.blacktext),
          SizedBox(height: 20.h,),
          Primarytext(text: 'Work email', fontSize:12.sp,
              fontWeight: FontWeight.w500, textColor: appColors.blacktext),

          TextFormField(
            decoration: InputDecoration(suffix: Icon(Icons.cancel_outlined),
            ),
          )
        ],),
      ),
    );
  }
}
