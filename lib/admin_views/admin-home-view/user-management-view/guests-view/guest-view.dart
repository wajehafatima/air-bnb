// import 'package:air_bnb/src/controller/components/primaryText.dart';
// import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class Guestview extends StatelessWidget {
//   const Guestview({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemCount: 10, // Replace with dynamic data count
//       itemBuilder: (context, index) {
//         return _guestCard(index);
//       },
//     );
//   }
//
//   Widget _guestCard(int id) {
//     return Card(color:appColors.whiteBG ,shadowColor: appColors.grey,elevation: 5,
//       margin: const EdgeInsets.only(bottom: 16.0),
//       child: ListTile(
//         title: Primarytext(text: 'Guest ID: $id', fontSize: 13.sp, fontWeight: FontWeight.w600,
//             textColor: appColors.blacktext),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Primarytext(text: 'Name: Guest Name $id', fontSize: 12.sp, fontWeight: FontWeight.w500,
//                 textColor: appColors.blacktext),
//             Primarytext(text: 'Address: 123 Street, City', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext),
//            Primarytext(text: 'Phone: +1 123-456-7890', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                textColor: appColors.blacktext),
//             Primarytext(text: 'Verified: Yes"', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext),
//         Primarytext(text: 'Profile: Incomplete', fontSize: 12.sp, fontWeight: FontWeight.w400,
//             textColor: appColors.blacktext),
//           ],
//         ),
//         trailing: Icon(Icons.more_vert),
//       ),
//     );
//   }
// }

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:google_fonts/google_fonts.dart';

class Guestview extends StatelessWidget {
  const Guestview({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the graph and table
    final guestData = List.generate(10, (index) {
      return {
        'id': index,
        'name': 'Guest Name $index',
        'address': '123 Street, City',
        'phone': '+1 123-456-7890',
        'verified': index % 2 == 0 ? 'Yes' : 'No',
        'profileStatus': index % 2 == 0 ? 'Complete' : 'Incomplete',
      };
    });

    // Extract data for the graph (e.g., profile status count)
    final profileStatusData = {
      'Complete': guestData.where((guest) => guest['profileStatus'] == 'Complete').length,
      'Incomplete': guestData.where((guest) => guest['profileStatus'] == 'Incomplete').length,
    };

    return Scaffold(
backgroundColor: appColors.whiteBG,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Table for displaying guest data
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Table(
                    columnWidths: const <int, TableColumnWidth>{
                      0: FixedColumnWidth(100), // Fix the first column width
                    },
                    defaultColumnWidth: IntrinsicColumnWidth(),
                    border: TableBorder.all(
                      color: Colors.grey.shade300,
                      width: 1.0,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    children: [
                      _buildHeaderRow(),
                      ..._buildGuestDataRows(guestData),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Bar Chart for profile status (Complete vs Incomplete)
            Container(
              height: 300,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: appColors.whiteBG,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: appColors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceBetween,
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,

                        // getTitles: (value) {
                        //   return value == 0 ? 'Complete' : 'Incomplete';
                        // },
                        // getTitlesTextStyle: (context, value) {
                        //   return TextStyle(fontSize: 12, color: Colors.black);
                        // },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        // getTitles: (value) {
                        //   return value.toInt().toString();
                        // },
                        // getTitlesTextStyle: (context, value) {
                        //   return TextStyle(fontSize: 12, color: Colors.black);
                        // },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: true),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          toY: profileStatusData['Complete']!.toDouble(),
                          color: Colors.greenAccent,
                          width: 16,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          toY: profileStatusData['Incomplete']!.toDouble(),
                          color: Colors.redAccent,
                          width: 16,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
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

  TableRow _buildHeaderRow() {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.blueAccent.shade100,
      ),
      children: [
        _buildTableCell('ID'),
        _buildTableCell('Name'),
        _buildTableCell('Address'),
        _buildTableCell('Phone'),
        _buildTableCell('Verified'),
        _buildTableCell('Profile Status'),
      ],
    );
  }

  List<TableRow> _buildGuestDataRows(List<Map<String, dynamic>> guestData) {
    return List.generate(
      guestData.length,
          (index) {
        final guest = guestData[index];
        return TableRow(
          decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.grey.shade100 : Colors.white,
          ),
          children: [
            _buildTableCell(guest['id'].toString()),
            _buildTableCell(guest['name']),
            _buildTableCell(guest['address']),
            _buildTableCell(guest['phone']),
            _buildTableCell(guest['verified']),
            _buildTableCell(guest['profileStatus']),
          ],
        );
      },
    );
  }

  Widget _buildTableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
        textAlign: TextAlign.center,
      ),
    );
  }
}
