import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Airbnbworksview extends StatefulWidget {
  const Airbnbworksview({super.key});

  @override
  State<Airbnbworksview> createState() => _AirbnbworksviewState();
}

class _AirbnbworksviewState extends State<Airbnbworksview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
            Primarytext(text: 'You are just 3 steps away from your next gateway',
                fontSize: 20.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext),
        SizedBox(height: 10,),
              Primarytext(text: 'where you go, we\'re here to help', fontSize: 20.sp,
                  fontWeight: FontWeight.w500, textColor: appColors.blacktext),
              SizedBox(height: 10.h,),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Image.asset(appIcons.privacy,height: 40.h,width: 40.w,),
                    
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Primarytext(text: 'Health and safety is priority', fontSize: 12.sp,
                            fontWeight: FontWeight.w500, textColor: appColors.blacktext),
                        Primarytext(text: 'Host are commiting to enhanced COVID-19 cleaning\n protocols.', fontSize: 12.sp,
                            fontWeight: FontWeight.w300, textColor: appColors.blacktext),
                      ],
                    )
                  ],)
                ],
              )


          ],),
        ),
      ),
    );
  }
}
