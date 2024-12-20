import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/HomeView.dart';
import 'package:air_bnb/src/view/homeview/mainHomeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Tripsview extends StatefulWidget {
  const Tripsview({super.key});

  @override
  State<Tripsview> createState() => _TripsviewState();
}

class _TripsviewState extends State<Tripsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h,),
            Primarytext(text: 'Trips', fontSize: 25.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext),
SizedBox(height: 10.h,),
            Divider(),
            SizedBox(height: 13.h,),
            Primarytext(text: 'No trips booked...yet!', fontSize: 20.sp, fontWeight: FontWeight.w500, textColor:appColors.blacktext),
            SizedBox(height: 5,),
            Primarytext(text: 'Time to dust off your bags and start planning your next adventure.', fontSize:13.sp, fontWeight:FontWeight.w400, textColor:appColors.blacktext),

           Custombutton(text: 'Start Searching', onTap:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHomeView()));
           },color: appColors.whiteBG,textColor: appColors.blacktext,width: 130.w,),
            SizedBox(height: 20.h,),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Primarytext(text: 'Can\'t find your reservation here?', fontSize:13.sp, fontWeight:FontWeight.w400, textColor: appColors.blacktext),

                TextButton(onPressed: (){}, child: Text('visit the help center',style: TextStyle(color: appColors.blacktext,fontSize: 13.sp,
                  decoration: TextDecoration.underline,)),
                ) ],
            )




          ],
        ),
      ),
    );
  }
}
