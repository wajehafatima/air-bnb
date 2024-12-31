import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class Listingview extends StatefulWidget {
  const Listingview({super.key});

  @override
  State<Listingview> createState() => _ListingviewState();
}

class _ListingviewState extends State<Listingview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
            text: 'Listing management',
            fontSize: 25.sp,
            fontWeight: FontWeight.w500,
            textColor: appColors.blacktext),
      ),
    );
  }
}

class ManageListingsWidget extends StatelessWidget {
  const ManageListingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: appColors.whiteBG,
          elevation: 5,
          margin: EdgeInsets.only(bottom: 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Primarytext(
                  text: "Listing #${index + 1}",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 8.h),
                Primarytext(
                  text: "Status: Pending Approval",
                  fontSize: 14.sp,
                  textColor: appColors.grey,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appColors.whiteBG,
                        ),
                        child: Primarytext(
                            text: 'Approve',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                            textColor: appColors.blacktext)),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appColors.whiteBG,
                        ),
                        child: Primarytext(
                            text: 'Reject',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                            textColor: appColors.secondary)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ControlRankingWidget extends StatelessWidget {
  const ControlRankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: appColors.whiteBG,
          elevation: 5,
          margin: EdgeInsets.only(bottom: 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Primarytext(
                  text: "Listing #${index + 1}",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_upward,
                        color: appColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_downward,
                        color: appColors.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
