// import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/cancellation-view/cancellation-view.dart';
// import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/refund-view/refund-view.dart';
// import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/total-earning-view/total-earning-view.dart';

// import 'package:air_bnb/src/controller/components/primaryText.dart';
// import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class EarningManagementView extends StatefulWidget {
//   const EarningManagementView({super.key});

//   @override
//   State<EarningManagementView> createState() => _EarningManagementViewState();
// }

// class _EarningManagementViewState extends State<EarningManagementView> with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this); // Three tabs
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: appColors.whiteBG,
//       appBar: AppBar(backgroundColor: appColors.whiteBG,
//         title: Primarytext(
//           text: 'Earning Management',
//           fontSize: 25.sp,
//           fontWeight: FontWeight.w500,
//           textColor: appColors.blacktext,
//         ),
//         bottom: TabBar(
//           controller: _tabController,
//           labelColor: appColors.blacktext,
//           unselectedLabelColor: appColors.blacktext,
//           indicatorColor: appColors.secondary,
//           tabs: const [
//             Tab(text: 'Total earnings'),
//             Tab(text: 'Refunds'),
//             Tab(text: 'Cancellation'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//          Totalearningview(),
//           Refundview(),
//           Cancellationview(),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/cancellation-view/cancellation-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/refund-view/refund-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/total-earning-view/total-earning-view.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';

class EarningManagementView extends StatefulWidget {
  const EarningManagementView({super.key});

  @override
  State<EarningManagementView> createState() => _EarningManagementViewState();
}

class _EarningManagementViewState extends State<EarningManagementView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Three tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Earning Management',
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.secondary,
          unselectedLabelColor: appColors.grey,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3,
              color: appColors.secondary,
            ),
          ),
          tabs: const [
            Tab(text: 'Total Earnings'),
            Tab(text: 'Refunds'),
            Tab(text: 'Cancellations'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          TotalEarningsView(), // Enhanced design
          RefundsView(), // Evidence upload feature
          CancellationsView(), // Penalty details
        ],
      ),
    );
  }
}

// Total Earnings Tab
class TotalEarningsView extends StatelessWidget {
  const TotalEarningsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(
            text: "Overview",
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 10.h),
          Card(
            color: appColors.whiteBG,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Primarytext(
                        text: "Total Earnings",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        textColor: appColors.grey,
                      ),
                      SizedBox(height: 6.h),
                      Primarytext(
                        text: "\$24,890",
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        textColor: appColors.secondary,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.bar_chart_rounded,
                    size: 40.r,
                    color: appColors.secondary,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Center(
              child: Primarytext(
                text: "Graphical Overview Coming Soon",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                textColor: appColors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Refunds Tab
class RefundsView extends StatelessWidget {
  const RefundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(
            text: "Guest Refunds & Host Reimbursements",
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 20.h),
          ElevatedButton.icon(
            onPressed: () {
              // Open file picker for evidence upload
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: appColors.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            icon: Icon(
              Icons.upload_rounded,
              color: appColors.whiteBG,
              size: 20.r,
            ),
            label: Primarytext(
              text: "Upload Evidence",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.whiteBG,
            ),
          ),
        ],
      ),
    );
  }
}

// Cancellations Tab
class CancellationsView extends StatelessWidget {
  const CancellationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(
            text: "Cancellation Penalties",
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 10.h),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.warning_rounded,
              color: appColors.linkBlue,
              size: 30.r,
            ),
            title: Primarytext(
              text: "Guest Penalties",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext,
            ),
            subtitle: Primarytext(
              text: "\$200 charged for late cancellation.",
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.grey,
            ),
          ),
          SizedBox(height: 10.h),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.warning_rounded,
              color: appColors.linkBlue,
              size: 30.r,
            ),
            title: Primarytext(
              text: "Host Penalties",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext,
            ),
            subtitle: Primarytext(
              text: "\$500 charged for last-minute cancellation.",
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
