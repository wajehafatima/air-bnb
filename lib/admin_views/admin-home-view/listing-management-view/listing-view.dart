import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class Listingview extends StatefulWidget {
  const Listingview({super.key});

  @override
  State<Listingview> createState() => _ListingviewState();
}

class _ListingviewState extends State<Listingview>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back_ios),),
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Listing Management',
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.blacktext,
          indicatorColor: appColors.secondary,
          unselectedLabelColor: appColors.grey,
          tabs: [
            Tab(
              child: Primarytext(
                  text: 'Manage listing',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.grey),
            ),
            Tab(
              child: Primarytext(
                  text: 'Control Ranking',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.grey),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ManageListingsWidget(),
          ControlRankingWidget(),
        ],
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
        return Container(
          //height: 160.h,
          width: 340.w,
          decoration: BoxDecoration(
            color: appColors.whiteBG,
            border: Border.all(color: appColors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(bottom: 10.h),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Primarytext(
                  text: "Listing #${index + 1}",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 5.h),
                Primarytext(
                    text: 'Host ID: 1',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    textColor: AppColors.blackText),
                SizedBox(
                  height: 5.h,
                ),
                Primarytext(
                    text: 'Host name: John',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    textColor: AppColors.blackText),
                SizedBox(height: 10.h),
                Primarytext(
                  text: "Status: Pending Approval",
                  fontSize: 14.sp,
                  textColor: appColors.grey,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 30.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            color: appColors.whiteBG,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: appColors.grey)),
                        child: TextButton(
                          onPressed: () {},
                          child: Primarytext(
                              text: 'Approve',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              textColor: appColors.blacktext),
                        )),
                    Container(
                        height: 30.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            color: appColors.whiteBG,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: appColors.grey)),
                        child: TextButton(
                          onPressed: () {},
                          child: Primarytext(
                              text: 'Reject',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              textColor: appColors.blacktext),
                        )),
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
      padding: EdgeInsets.all(20.w),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          elevation: 8,
          margin: EdgeInsets.only(bottom: 20.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [appColors.whiteBG.withOpacity(0.2), appColors.whiteBG],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: appColors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Primarytext(text:
                        "Listing #${index + 1}",

                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          textColor: appColors.blacktext,
                        ),

                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_upward,
                              color: appColors.primary,
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

                  SizedBox(height: 12.h),

                  // Divider
                  Divider(
                    thickness: 1,
                    color: appColors.grey.withOpacity(0.3),
                  ),

                  SizedBox(height: 16.h),

                  // Pie Chart Section
                  SizedBox(
                    height: 150.h,
                    child: PieChart(
                      PieChartData(
                        sections: _generatePieChartSections(index),
                        centerSpaceRadius: 40,
                        sectionsSpace: 4,
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  // Line Chart Section
                  SizedBox(
                    height: 200.h,
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: _generateLineChartSpots(index),
                            isCurved: true,
                            gradient: LinearGradient(
                              colors: [
                                appColors.primary,
                                appColors.secondary,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            barWidth: 4,
                            belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                colors: [
                                  appColors.primary.withOpacity(0.3),
                                  appColors.secondary.withOpacity(0.1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ],
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) => Text(
                                value.toInt().toString(),
                                style: TextStyle(fontSize: 10.sp, color: appColors.grey),
                              ),
                              reservedSize: 30,
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 0:
                                    return Primarytext(text: 'Metric 1', fontSize: 12.sp,fontWeight: FontWeight.w300,textColor: appColors.blacktext,);
                                  case 1:
                                    return  Primarytext(text: 'Metric 2', fontSize: 12.sp,fontWeight: FontWeight.w300,textColor: appColors.blacktext,);
                                  case 2:
                                    return  Primarytext(text: 'Metric 3', fontSize: 12.sp,fontWeight: FontWeight.w300,textColor: appColors.blacktext,);
                                  default:
                                    return const Text('');
                                }
                              },
                              reservedSize: 30,
                            ),
                          ),
                        ),
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // Generate Pie Chart Sections
  List<PieChartSectionData> _generatePieChartSections(int index) {
    return [
      PieChartSectionData(
        value: (index + 1) * 20.0,
        color: appColors.primary,
        radius: 30,
        title: '${(index + 1) * 20}%',
        titleStyle: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.bold, color: appColors.whiteBG),
      ),
      PieChartSectionData(
        value: (10 - index) * 10.0,
        color: appColors.secondary,
        radius: 30,
        title: '${(10 - index) * 10}%',
        titleStyle: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.bold, color: appColors.whiteBG),
      ),
    ];
  }

  // Generate Line Chart Spots
  List<FlSpot> _generateLineChartSpots(int index) {
    return [
      FlSpot(0, (index + 1) * 1.5),
      FlSpot(1, (index + 1) * 2.0),
      FlSpot(2, (index + 1) * 1.2),
    ];
  }
}

// class ControlRankingWidget extends StatelessWidget {
//   const ControlRankingWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: EdgeInsets.all(16.w),
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Card(
//           color: appColors.whiteBG,
//           elevation: 5,
//           margin: EdgeInsets.only(bottom: 16.h),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(16.w),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Primarytext(
//                       text: "Listing #${index + 1}",
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.w300,
//                       textColor: appColors.blacktext,
//                     ),
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_upward,
//                             color: appColors.grey,
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_downward,
//                             color: appColors.secondary,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16.h),
//                 SizedBox(
//                   height: 200.h,
//                   child: BarChart(
//                     BarChartData(
//                       barGroups: _generateBarGroups(index),
//                       titlesData: FlTitlesData(
//                         leftTitles: AxisTitles(
//                           sideTitles: SideTitles(
//                             showTitles: true,
//                             getTitlesWidget: (value, meta) {
//                               return Text(value.toInt().toString(), style: TextStyle(fontSize: 10.sp));
//                             },
//                           ),
//                         ),
//                         bottomTitles: AxisTitles(
//                           sideTitles: SideTitles(
//                             showTitles: true,
//                             getTitlesWidget: (value, meta) {
//                               switch (value.toInt()) {
//                                 case 0:
//                                   return Text('Metric 1', style: TextStyle(fontSize: 12.sp));
//                                 case 1:
//                                   return Text('Metric 2', style: TextStyle(fontSize: 12.sp));
//                                 case 2:
//                                   return Text('Metric 3', style: TextStyle(fontSize: 12.sp));
//                                 default:
//                                   return const Text('');
//                               }
//                             },
//                           ),
//                         ),
//                       ),
//
//                       borderData: FlBorderData(show: false),
//                       gridData: FlGridData(show: false),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   List<BarChartGroupData> _generateBarGroups(int index) {
//     // Example data for the chart. You can replace this with dynamic data as needed.
//     return [
//       BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: (index + 1) * 2.0, color: appColors.grey)]),
//       BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: (index + 1) * 1.5, color: appColors.secondary)]),
//       BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: (index + 1) * 1.0, color: appColors.grey)]),
//     ];
//   }
// }


// class ControlRankingWidget extends StatelessWidget {
//   const ControlRankingWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: EdgeInsets.all(16.w),
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Card(
//           color: appColors.whiteBG,
//           elevation: 5,
//           margin: EdgeInsets.only(bottom: 16.h),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(16.w),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Primarytext(
//                   text: "Listing #${index + 1}",
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w300,
//                   textColor: appColors.blacktext,
//                 ),
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.arrow_upward,
//                         color: appColors.grey,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.arrow_downward,
//                         color: appColors.secondary,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
