// import 'package:air_bnb/admin_views/admin-home-view/admin-dashboard/Overview-view/overview-view.dart';
// import 'package:air_bnb/admin_views/admin-home-view/admin-dashboard/charts-View/charts-view.dart';
// import 'package:air_bnb/src/controller/components/primaryText.dart';
// import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
//
//
// class AdminDashboardView extends StatefulWidget {
//   const AdminDashboardView({super.key});
//
//   @override
//   State<AdminDashboardView> createState() => _AdminDashboardViewState();
// }
//
// class _AdminDashboardViewState extends State<AdminDashboardView> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this); // Adjust the length based on your tabs
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: appColors.whiteBG,
//       appBar: AppBar(backgroundColor: appColors.whiteBG,
//         title: Primarytext(text: 'Admin dashboard', fontSize: 25.sp, fontWeight: FontWeight.w500,
//             textColor: appColors.blacktext),
//         bottom: TabBar(
//           controller: _tabController,
//           labelColor: appColors.blacktext,
//           unselectedLabelColor: appColors.blacktext,
//           indicatorColor: appColors.secondary,
//           tabs: const [
//             Tab(text: 'Overview'),
//             Tab(text: 'Charts'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//         OverviewView(),
//         Chartsview()
//         ],
//       ),
//     );
//   }
// }


import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/primarytext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios),),
        backgroundColor: appColors.whiteBG,
        title: Primarytext(text:
          'Admin Dashboard',

            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            textColor: Colors.black,
          ),
        ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stats Section
            _buildStatCard('Total Host', '37,46K', Icons.group),
            _buildStatCard('Total Listings', '48,90K', Icons.home),
            _buildStatCard('Avg Reviews', '23,27', Icons.star),
            _buildStatCard('Avg Price', '\$153', Icons.attach_money),
            SizedBox(height: 20.h),

            // Charts Section
            Primarytext(text:
              'Total Listings by neighborhood & Room type',

                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: appColors.blacktext,// Matching title with theme color
              ),

            SizedBox(height: 10.h),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: BarChart(
                BarChartData(
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          fromY: 8,
                          toY: 0,
                          color: appColors.secondary, // Matching color theme
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          fromY: 7,
                          toY: 0,
                          color: appColors.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          fromY: 6,
                          toY: 0,
                          color: appColors.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                    // Add more data
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Primarytext(text:
              'Number of Reviews vs Price',

                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: appColors.blacktext, // Matching title with theme color
              ),

            SizedBox(height: 10.h),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ScatterChart(
                ScatterChartData(
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  scatterSpots: [
                    ScatterSpot(1, 1),
                    ScatterSpot(2, 2),
                    ScatterSpot(3, 3),
                    // Add more data
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Card(
      color: appColors.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 30.sp, color: appColors.secondary),
        ),
        title: Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 26.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.white),
        ),
      ),
    );
  }
}

// class AdminDashboardView extends StatelessWidget {
//   const AdminDashboardView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           'Admin Dashboard',
//           style: TextStyle(
//             fontSize: 20.sp,
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Stats Section
//             // SingleChildScrollView(
//             //   scrollDirection: Axis.horizontal,
//             //   child: Column(
//             //     mainAxisAlignment: MainAxisAlignment.start, // Or 'spaceEvenly', depending on the design
//             //     children: [
//             //       _buildStatCard('Total Host', '37,46K', Icons.group),
//             //       _buildStatCard('Total Listings', '48,90K', Icons.home),
//             //       _buildStatCard('Avg Reviews', '23,27', Icons.star),
//             //       _buildStatCard('Avg Price', '\$153', Icons.attach_money),
//             //     ],
//             //   ),
//             // )
// //,
//             _buildStatCard('Total Host', '37,46K', Icons.group),
//             _buildStatCard('Total Listings', '48,90K', Icons.home),
//             _buildStatCard('Avg Reviews', '23,27', Icons.star),
//             _buildStatCard('Avg Price', '\$153', Icons.attach_money),
//             SizedBox(height: 20.h),
//             // Filters Section
//             // Text(
//             //   'Filters',
//             //   style: TextStyle(
//             //     fontSize: 18.sp,
//             //     fontWeight: FontWeight.w600,
//             //   ),
//             // ),
//             // SizedBox(height: 10.h),
//             // _buildFilters(),
//             // SizedBox(height: 20.h),
//             // Charts Section
//             Text(
//               'Total Listings by Neighborhood & Room Type',
//               style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             SizedBox(height: 10.h),
//             Container(
//               height: 200.h,
//               child: BarChart(
//                   BarChartData(
//                     titlesData: FlTitlesData(show: true),
//                     borderData: FlBorderData(show: true),
//                     barGroups: [
//                       BarChartGroupData(
//                         x: 0,
//                         barRods: [
//                           BarChartRodData(
//
//                             fromY: 8,
//                             toY: 0, // You can set toY to 0 for simplicity or use another value to represent the bottom of the bar
//                             color: Colors.blue,
//                           ),
//                         ],
//                       ),
//                       BarChartGroupData(
//                         x: 1,
//                         barRods: [
//                           BarChartRodData(
//                             fromY: 7,
//                             toY: 0, // Same here
//                             color: Colors.blue,
//                           ),
//                         ],
//                       ),
//                       BarChartGroupData(
//                         x: 2,
//                         barRods: [
//                           BarChartRodData(
//                             fromY: 6,
//                             toY: 0, // Same here
//                             color: Colors.blue,
//                           ),
//                         ],
//                       ),
//                       // Add more data
//                     ],
//                   )
//
//               ),
//             ),
//             SizedBox(height: 20.h),
//             Text(
//               'Number of Reviews vs Price',
//               style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             SizedBox(height: 10.h),
//             Container(
//               height: 200.h,
//               child: ScatterChart(
//                 ScatterChartData(
//                   titlesData: FlTitlesData(show: true),
//                   borderData: FlBorderData(show: true),
//                   scatterSpots: [
//                     ScatterSpot(1, 1),
//                     ScatterSpot(2, 2),
//                     ScatterSpot(3, 3),
//                     // Add more data
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildStatCard(String title, String value, IconData icon) {
//     return Card(
//       //elevation: 4,
//       color: appColors.secondary,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//       child:
//       ListTile(
//         leading: Container(
//           padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5)
//             ),
//             child: Icon(icon, size: 30.sp, color: appColors.secondary)),
//         title:  Text(
//           value,
//           style: TextStyle(
//               fontSize: 26.sp,
//               fontWeight: FontWeight.bold,
//               color: Colors.white
//           ),
//         ),
//         subtitle:  Text(
//           title,
//           //textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 26.sp,color: Colors.white,),
//         ),
//       ),
//       // Column(
//       //   mainAxisAlignment: MainAxisAlignment.center,
//       //   children: [
//       //     Icon(icon, size: 30.sp, color: Colors.white),
//       //     SizedBox(height: 8.h),
//       //     Text(
//       //       value,
//       //       style: TextStyle(
//       //         fontSize: 16.sp,
//       //         fontWeight: FontWeight.bold,
//       //         color: Colors.white
//       //       ),
//       //     ),
//       //     SizedBox(height: 4.h),
//       //     Text(
//       //       title,
//       //       textAlign: TextAlign.center,
//       //       style: TextStyle(fontSize: 12.sp,color: Colors.white,),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
//
//   Widget _buildFilters() {
//     return Column(
//       children: [
//         _buildDropdown('Room Type', ['All', 'Entire home/apt', 'Private room', 'Shared room']),
//         SizedBox(height: 10.h),
//         _buildDropdown('Neighborhood', ['All', 'Williamsburg', 'Bedford-Stuyvesant']),
//         SizedBox(height: 10.h),
//         Row(
//           children: [
//             Expanded(child: _buildRangeSlider('Price', 0, 10000)),
//             SizedBox(width: 10.w),
//             Expanded(child: _buildRangeSlider('Number of Reviews', 0, 629)),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildDropdown(String label, List<String> options) {
//     return DropdownButtonFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//       items: options
//           .map((option) => DropdownMenuItem(
//         value: option,
//         child: Text(option),
//       ))
//           .toList(),
//       onChanged: (value) {},
//     );
//   }
//
//   Widget _buildRangeSlider(String label, double min, double max) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label),
//         RangeSlider(
//           values: RangeValues(min, max / 2),
//           min: min,
//           max: max,
//           divisions: 10,
//           onChanged: (values) {},
//         ),
//       ],
//     );
//   }
// }

