import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Managehostsview extends StatefulWidget {
  const Managehostsview({super.key});

  @override
  State<Managehostsview> createState() => _ManagehostsviewState();
}

class _ManagehostsviewState extends State<Managehostsview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Manage Host Bank Details and Process Payments',
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
              itemCount: 5, // Example number of hosts
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    title: Text(
                      'Host ${index + 1}',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: appColors.blacktext,
                      ),
                    ),
                    subtitle: Text(
                      'Bank Account: XXXXXXXXXX',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: appColors.blacktext.withOpacity(0.6),
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.payment, color: appColors.secondary),
                      onPressed: () {
                        // Handle Payment Process
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
