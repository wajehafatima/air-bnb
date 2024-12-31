import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';

class Chargesview extends StatefulWidget {
  const Chargesview({super.key});

  @override
  State<Chargesview> createState() => _ChargesviewState();
}

class _ChargesviewState extends State<Chargesview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(text: 'Adjust Charges, Penalties, or Reimbursements', fontSize: 18.sp,
              fontWeight: FontWeight.w500, textColor: appColors.blacktext),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: appColors.whiteBG,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5, // Example number of charges
              itemBuilder: (context, index) {
                return Card(color: appColors.whiteBG,
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    title: Primarytext(text:
                      'Charge ${index + 1}',

                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        textColor: appColors.blacktext,
                      ),

                    subtitle: Primarytext(text:
                      'Amount: ₹XXX',

                        fontSize: 14.sp,
                       textColor: appColors.blacktext.withOpacity(0.6),
                      fontWeight: FontWeight.w300,
                      ),

                    trailing: IconButton(
                      icon: Icon(Icons.edit, color: appColors.secondary),
                      onPressed: () {
                        // Handle charge adjustment
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
