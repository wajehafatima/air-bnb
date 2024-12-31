import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Hostview extends StatelessWidget {
  const Hostview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10, // Replace with dynamic data count
      itemBuilder: (context, index) {
        return _hostCard(index);
      },
    );
  }

  Widget _hostCard(int id) {
    return Card(color: appColors.whiteBG,shadowColor: appColors.grey,elevation: 5,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Primarytext(text: 'Host ID: $id', fontSize:13.sp, fontWeight: FontWeight.w600,
            textColor: appColors.blacktext),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(text: 'Name: Host Name $id"', fontSize: 12.sp, fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(text: 'Listing Name: Listing $id', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext),
           Primarytext(text: 'Address: 123 Host Street, City', fontSize: 12.sp, fontWeight: FontWeight.w400,
               textColor: appColors.blacktext),
           Primarytext(text: 'Phone: +1 123-456-7890', fontSize: 12.sp, fontWeight: FontWeight.w400,
               textColor: appColors.blacktext),
            Primarytext(text: 'Tax ID: 123456789', fontSize: 12.sp, fontWeight: FontWeight.w400, 
                textColor: appColors.blacktext),
            Primarytext(text: 'Verification: Verified"', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext,),
            Primarytext(text: 'Incomplete Profiles: No', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext),
            Primarytext(text: 'Total Listings: 5', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext),
            Primarytext(text: 'Bookings: 12', fontSize:12.sp, fontWeight:FontWeight.w400,
                textColor: appColors.blacktext),
            Primarytext(text: 'Earning \$5000', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext)
          ],
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
