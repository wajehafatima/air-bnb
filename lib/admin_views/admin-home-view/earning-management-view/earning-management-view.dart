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

import 'package:fl_chart/fl_chart.dart';
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
    return Scaffold(backgroundColor: appColors.whiteBG,
     // backgroundColor: appColors.grey,
      appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);

      },icon: Icon(Icons.arrow_back_ios),),
        elevation: 0,
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Earning Management',
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
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
          tabs:  [
            Tab(child: Primarytext(text: 'Total earnings', fontSize: 12.sp, fontWeight:FontWeight.w400,
            textColor: appColors.blacktext),),
      Tab(child:  Primarytext(text: 'Refunds', fontSize: 12.sp, fontWeight:FontWeight.w400,
          textColor: appColors.blacktext),),
            Tab(child:  Primarytext(text: 'Cancellation', fontSize: 12.sp, fontWeight:FontWeight.w400,
                textColor: appColors.blacktext),),
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

class TotalEarningsView extends StatelessWidget {
  const TotalEarningsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(
              text: "Earnings Overview",
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 10.h),

            // Total Earnings Card
            _buildEarningsCard("Total Earnings", "\$24,890", Icons.bar_chart_rounded),

            SizedBox(height: 10.h),

            // Yearly Earnings Card
            _buildEarningsCard("Yearly Earnings", "\$200,000", Icons.show_chart_rounded),

            SizedBox(height: 10.h),

            // Monthly Earnings Card
            _buildEarningsCard("Monthly Earnings", "\$15,000", Icons.insert_chart_outlined),

            SizedBox(height: 10.h),

            // Weekly Earnings Card
            _buildEarningsCard("Weekly Earnings", "\$3,500", Icons.pie_chart_rounded),

            SizedBox(height: 10.h),

            // Daily Earnings Card
            _buildEarningsCard("Daily Earnings", "\$500", Icons.bar_chart),

            SizedBox(height: 10.h),

            // Graphical Overview - Earnings Graph
            _buildEarningsGraph(),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  // Function to build individual earnings card
  Widget _buildEarningsCard(String title, String amount, IconData icon) {
    return Card(
      color: appColors.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 32.w,
              width: 36.w,
              decoration: BoxDecoration(
                color: appColors.whiteBG.withOpacity(0.2),
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Icon(icon, color: Colors.white, size: 20.w),
            ),
            SizedBox(width: 15.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Primarytext(
                  text: title,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.whiteBG,
                ),
                //SizedBox(height: 6.h),
                Primarytext(
                  text: amount,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  textColor: appColors.whiteBG,
                ),
              ],
            ),
            // Icon(
            //   icon,
            //   size: 40.r,
            //   color: appColors.whiteBG,
            // ),
          ],
        ),
      ),
    );
  }

  // Function to build the earnings graph
  Widget _buildEarningsGraph() {
    return Card(
      color: appColors.whiteBG,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(
              text: "Earnings Graph",
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 200.h,  // Adjust the height as per your design
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 24000),  // Total earnings
                        FlSpot(1, 200000), // Yearly earnings
                        FlSpot(2, 15000),  // Monthly earnings
                        FlSpot(3, 3500),   // Weekly earnings
                        FlSpot(4, 500),    // Daily earnings
                      ],
                      isCurved: true,
                      color: appColors.secondary,
                      barWidth: 4,
                      belowBarData: BarAreaData(show: true, color: appColors.secondary.withOpacity(0.2)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Total Earnings Tab
// class TotalEarningsView extends StatelessWidget {
//   const TotalEarningsView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Primarytext(
//             text: "Overview",
//             fontSize: 20.sp,
//             fontWeight: FontWeight.w600,
//             textColor: appColors.blacktext,
//           ),
//           SizedBox(height: 10.h),
//           Card(
//             color: appColors.whiteBG,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12.r),
//             ),
//             elevation: 4,
//             child: Padding(
//               padding: EdgeInsets.all(16.w),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Primarytext(
//                         text: "Total Earnings",
//                         fontSize: 18.sp,
//                         fontWeight: FontWeight.w500,
//                         textColor: appColors.grey,
//                       ),
//                       SizedBox(height: 6.h),
//                       Primarytext(
//                         text: "\$24,890",
//                         fontSize: 24.sp,
//                         fontWeight: FontWeight.bold,
//                         textColor: appColors.secondary,
//                       ),
//                     ],
//                   ),
//                   Icon(
//                     Icons.bar_chart_rounded,
//                     size: 40.r,
//                     color: appColors.secondary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20.h),
//           Expanded(
//             child: Center(
//               child: Primarytext(
//                 text: "Graphical Overview Coming Soon",
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w400,
//                 textColor: appColors.grey,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
              color: appColors.secondary,
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
              color: appColors.secondary,
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
