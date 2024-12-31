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
          Text(
            'Adjust Charges, Penalties, or Reimbursements',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: appColors.blacktext,
            ),
          ),
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
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    title: Text(
                      'Charge ${index + 1}',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: appColors.blacktext,
                      ),
                    ),
                    subtitle: Text(
                      'Amount: ₹XXX',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: appColors.blacktext.withOpacity(0.6),
                      ),
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
