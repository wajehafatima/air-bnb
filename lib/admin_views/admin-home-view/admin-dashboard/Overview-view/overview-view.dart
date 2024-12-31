// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../src/controller/components/primaryText.dart';
// import '../../../../src/controller/constants/colors/appColors.dart';
// class OverviewView extends StatefulWidget {
//   const OverviewView({super.key});

//   @override
//   State<OverviewView> createState() => _OverviewViewState();
// }

// class _OverviewViewState extends State<OverviewView> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(backgroundColor: appColors.whiteBG,
//       appBar: AppBar(backgroundColor: appColors.whiteBG,
//         title: Primarytext(text: 'Overview', fontSize: 25.sp, fontWeight:FontWeight.w500,
//             textColor: appColors.blacktext),
//       ),
//     );
//   }
// }

import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Metrics Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _MetricCard(title: "Total Bookings", value: "245"),
              _MetricCard(title: "Active Listings", value: "37"),
            ],
          ),
          SizedBox(height: 16.h),
          // Revenue and Notifications Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _MetricCard(title: "Total Revenue", value: "\$12,450"),
              _MetricCard(title: "Urgent Notifications", value: "5"),
            ],
          ),
          SizedBox(height: 16.h),
          // Google Maps
          SizedBox(
            height: 300.h,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(37.7749, -122.4194), // San Francisco coordinates
                zoom: 10,
              ),
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {},
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final String value;

  const _MetricCard({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: appColors.secondary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: appColors.secondary),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8.h),
          Text(
            value,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
