import 'package:air_bnb/src/controller/components/primaryText.dart';
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(
              text: 'Manage Host Bank Details and Process Payments',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext,
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
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: appColors.whiteBG,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Profile or Host Icon
                        Container(
                          height: 48.w,
                          width: 48.w,
                          decoration: BoxDecoration(
                            color: appColors.secondary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Icon(Icons.account_balance, color: appColors.secondary, size: 28.w),
                        ),
                        SizedBox(width: 16.w),
                        // Host Details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Primarytext(
                                text: 'Host ${index + 1}',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                textColor: appColors.blacktext,
                              ),
                              SizedBox(height: 4.h),
                              Primarytext(
                                text: 'Bank Account: XXXXXXXXXX',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                textColor: appColors.grey,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.w),
                        // Payment Button
                        ElevatedButton.icon(
                          onPressed: () {
                            // Handle Payment Process
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appColors.secondary,
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          icon: Icon(Icons.payment, color: Colors.white, size: 20.w),
                          label: Text(
                            'Pay',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Managehostsview extends StatefulWidget {
//   const Managehostsview({super.key});
//
//   @override
//   State<Managehostsview> createState() => _ManagehostsviewState();
// }
//
// class _ManagehostsviewState extends State<Managehostsview> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Primarytext(text: 'Manage Host Bank Details and Process Payments', fontSize: 18.sp, fontWeight: FontWeight.w500,
//               textColor: appColors.blacktext),
//           SizedBox(height: 20.h),
//           Container(
//             decoration: BoxDecoration(
//               color: appColors.whiteBG,
//               borderRadius: BorderRadius.circular(12.r),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   spreadRadius: 1,
//                   blurRadius: 4,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: 5, // Example number of hosts
//               itemBuilder: (context, index) {
//                 return Card(color: appColors.whiteBG,
//                   elevation: 5,
//                   margin: EdgeInsets.symmetric(vertical: 8.h),
//                   child: ListTile(
//                     title: Primarytext(text: 'Host ${index + 1}', fontSize: 14.sp, fontWeight: FontWeight.w600,
//                         textColor: appColors.blacktext),
//                     subtitle: Primarytext(text: 'Bank Account: XXXXXXXXXX', fontSize: 16.sp, fontWeight: FontWeight.w400,
//                         textColor: appColors.blacktext),
//                     trailing: IconButton(
//                       icon: Icon(Icons.payment, color: appColors.secondary),
//                       onPressed: () {
//                         // Handle Payment Process
//                       },
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
