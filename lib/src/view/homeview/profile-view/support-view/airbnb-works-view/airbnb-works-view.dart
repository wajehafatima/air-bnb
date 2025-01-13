import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/airbnb-works-view/airbnb-widgets/hereToHelpDetails.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/airbnb-works-view/airbnb-widgets/imageColumn.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/airbnb-works-view/airbnb-widgets/questionList.dart';
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
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
            Primarytext(text: 'You are just 3 steps away from your next gateway',
                fontSize: 20.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext),
        SizedBox(height: 20,),

              ImageColumn(image: '', title: '1.Browse', title2: 'start by exploring stays and experiences. apply filters like entire homes.ypu can also save favourites to a wishlist'),
              SizedBox(height: 40.h,),
              ImageColumn(image: '', title:'2.Book', title2
                  : 'Once you have found what you are looking for, learn about hosts,read past guest reviews.'),
              SizedBox(height: 40.h,),
              ImageColumn(image: '', title: '3. Go',
                  title2:'You are all set! connect with your host through the app forlocal tips, questions, advices.'),
             SizedBox(height: 20.h,),
              Divider(),
              SizedBox(height: 30.h,),

              Primarytext(text: 'where you go, we\'re here to help', fontSize: 20.sp,

                  fontWeight: FontWeight.w500, textColor: appColors.blacktext),
              SizedBox(height: 30.h,),
              SizedBox(height: 20.h,),
              Heretohelpdetails(text1: 'Health and safety is Priority', text2:'Host are commiting to enhanced COVID-19 cleaning\n protocols.', image:appIcons.privacy),
              SizedBox(height: 20,),
              Heretohelpdetails(text1: 'More cancellation options', text2: 'Host can offer a range of cancellation\n options.', image:appIcons.support),
              SizedBox(height: 20.h,),
              Heretohelpdetails(text1: 'Support anytime, day, or night', text2: 'with 24/7 global support,we wew there\n for you.', image: appIcons.support),
              SizedBox(height: 50.h,),
              Primarytext(text: 'Still have questions?', fontSize: 20.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext),
              SizedBox(height: 30.h,),
             Questionlist(text: 'Do I need to meet my host?'),
              Questionlist(text: 'whats the Roomoree doing about covid19?'),
              Questionlist(text: 'when am I charged for reservation?'),
              Questionlist(text: 'Host Center'),
              Questionlist(text: 'Need more info')

          ],),
        ),
      ),
    );
  }
}
