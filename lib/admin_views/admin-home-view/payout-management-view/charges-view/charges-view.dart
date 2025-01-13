// import 'package:air_bnb/src/controller/components/primaryText.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
//
// class Chargesview extends StatefulWidget {
//   const Chargesview({super.key});
//
//   @override
//   State<Chargesview> createState() => _ChargesviewState();
// }
//
// class _ChargesviewState extends State<Chargesview> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Primarytext(text: 'Adjust Charges, Penalties, or Reimbursements', fontSize: 18.sp,
//               fontWeight: FontWeight.w500, textColor: appColors.blacktext),
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
//               itemCount: 5, // Example number of charges
//               itemBuilder: (context, index) {
//                 return Card(color: appColors.whiteBG,
//                   elevation: 5,
//                   margin: EdgeInsets.symmetric(vertical: 8.h),
//                   child: ListTile(
//                     title: Primarytext(text:
//                       'Charge ${index + 1}',
//
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w500,
//                         textColor: appColors.blacktext,
//                       ),
//
//                     subtitle: Primarytext(text:
//                       'Amount: ₹XXX',
//
//                         fontSize: 14.sp,
//                        textColor: appColors.blacktext.withOpacity(0.6),
//                       fontWeight: FontWeight.w300,
//                       ),
//
//                     trailing: IconButton(
//                       icon: Icon(Icons.edit, color: appColors.secondary),
//                       onPressed: () {
//                         // Handle charge adjustment
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
          Primarytext(
            text: 'Adjust Charges, Penalties, or Reimbursements',
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
              itemCount: 5, // Example number of charges
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icon or Charge Label
                      Container(
                        height: 48.w,
                        width: 48.w,
                        decoration: BoxDecoration(
                          color: appColors.secondary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        child: Icon(
                          Icons.monetization_on,
                          color: appColors.secondary,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      // Charge Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Primarytext(
                              text: 'Charge ${index + 1}',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              textColor: appColors.blacktext,
                            ),
                            SizedBox(height: 4.h),
                            Primarytext(
                              text: 'Amount: ₹XXX',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textColor: appColors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.w),
                      // Edit Button
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle charge adjustment
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appColors.secondary,
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        icon: Icon(Icons.edit, color: Colors.white, size: 20.w),
                        label: Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
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
    );
  }
}
