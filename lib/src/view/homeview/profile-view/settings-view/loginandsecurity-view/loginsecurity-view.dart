import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/personalDetails-list.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/securityPolicy-login.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/profileView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LogInSecurity extends StatefulWidget {
  const LogInSecurity({super.key});

  @override
  State<LogInSecurity> createState() => _LogInSecurityState();
}

class _LogInSecurityState extends State<LogInSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        leading: IconButton(onPressed:(){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Profileview()));
        }, icon:Icon(Icons.arrow_back)),

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Primarytext(text:'Login&Security', fontSize:25.sp , fontWeight:FontWeight.w500, textColor:appColors.blacktext),
            SizedBox(height: 30.h,),
            Primarytext(text:'Login', fontSize:27.sp , fontWeight:FontWeight.w500, textColor:appColors.blacktext),
            SizedBox(height: 5.h,),
            Divider(),

            PersonalDetails(title: 'Password', title2: 'Updated 3days ago', buttonText: 'Update', onTap: (){}),
            SizedBox(height: 10.h,),

           SecurityPolicyLogin(),

                  SizedBox(height: 20.h,),
                  Primarytext(text:'Account', fontSize:25.sp , fontWeight:FontWeight.w500, textColor:appColors.blacktext),
                  SizedBox(height: 20.h,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Primarytext(text: 'Deactivate your account', fontSize:14.sp, fontWeight:FontWeight.w400, textColor: appColors.blacktext),
                    InkWell(onTap: (){},
                        child: Primarytext(text:'Deactivate', fontSize: 14.sp, fontWeight:FontWeight.w500, textColor: appColors.secondary))
                  ],)



          ],
        ),
      ),
    );
  }
}
