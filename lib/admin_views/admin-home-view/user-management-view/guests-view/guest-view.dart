import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Guestview extends StatelessWidget {
  const Guestview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10, // Replace with dynamic data count
      itemBuilder: (context, index) {
        return _guestCard(index);
      },
    );
  }

  Widget _guestCard(int id) {
    return Card(color:appColors.whiteBG ,shadowColor: appColors.grey,elevation: 5,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Primarytext(text: 'Guest ID: $id', fontSize: 13.sp, fontWeight: FontWeight.w600,
            textColor: appColors.blacktext),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(text: 'Name: Guest Name $id', fontSize: 12.sp, fontWeight: FontWeight.w500,
                textColor: appColors.blacktext),
            Primarytext(text: 'Address: 123 Street, City', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext),
           Primarytext(text: 'Phone: +1 123-456-7890', fontSize: 12.sp, fontWeight: FontWeight.w400,
               textColor: appColors.blacktext),
            Primarytext(text: 'Verified: Yes"', fontSize: 12.sp, fontWeight: FontWeight.w400,
                textColor: appColors.blacktext),
        Primarytext(text: 'Profile: Incomplete', fontSize: 12.sp, fontWeight: FontWeight.w400,
            textColor: appColors.blacktext),
          ],
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
