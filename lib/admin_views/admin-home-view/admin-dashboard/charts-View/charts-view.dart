// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../src/controller/components/primaryText.dart';
// import '../../../../src/controller/constants/colors/appColors.dart';
// class Chartsview extends StatefulWidget {
//   const Chartsview({super.key});

//   @override
//   State<Chartsview> createState() => _ChartsviewState();
// }

// class _ChartsviewState extends State<Chartsview> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(backgroundColor: appColors.whiteBG,
//       appBar: AppBar(backgroundColor: appColors.whiteBG,
//         title: Primarytext(text: 'Charts', fontSize: 25.sp, fontWeight:FontWeight.w500,
//             textColor: appColors.blacktext),
//       ),
//     );
//   }
// }

import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chartsview extends StatelessWidget {
  const Chartsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Earnings Breakdown",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: true),
                titlesData: FlTitlesData(show: true),
                borderData: FlBorderData(show: true),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    color: appColors.secondary,
                    barWidth: 4,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(show: false),
                    spots: [
                      FlSpot(0, 1),
                      FlSpot(1, 3),
                      FlSpot(2, 2),
                      FlSpot(3, 5),
                      FlSpot(4, 3.1),
                      FlSpot(5, 4),
                      FlSpot(6, 4.5),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
