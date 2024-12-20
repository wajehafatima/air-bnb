import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Wishlistview extends StatefulWidget {
  const Wishlistview({super.key});

  @override
  State<Wishlistview> createState() => _WishlistviewState();
}

class _WishlistviewState extends State<Wishlistview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text('Edit',style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),)
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Primarytext(text: 'Wishlist', fontSize: 25.sp, fontWeight:FontWeight.w500, textColor:appColors.blacktext),
          SizedBox(height: 10.h,),
          Container(height: 130.h,width: 150.w,decoration: BoxDecoration(color: appColors.grey.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(blurRadius: 2,color: appColors.grey)],
              border: Border.all(color: appColors.whiteBG,width: 3)),child: Center(child: Icon(Icons.update,color: appColors.whiteBG,size: 70,)),),
       SizedBox(height: 10.h,),
            Primarytext(text: 'Recently Viewed', fontSize: 13.sp, fontWeight:FontWeight.w600, textColor:appColors.blacktext)
        ],),
      ),
    );
  }
}
