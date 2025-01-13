// import 'package:air_bnb/src/controller/components/primaryText.dart';
// import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class Hostview extends StatelessWidget {
//   const Hostview({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemCount: 10, // Replace with dynamic data count
//       itemBuilder: (context, index) {
//         return _hostCard(index);
//       },
//     );
//   }
//
//   Widget _hostCard(int id) {
//     return Card(color: appColors.whiteBG,shadowColor: appColors.grey,elevation: 5,
//       margin: const EdgeInsets.only(bottom: 16.0),
//       child: ListTile(
//         title: Primarytext(text: 'Host ID: $id', fontSize:13.sp, fontWeight: FontWeight.w600,
//             textColor: appColors.blacktext),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Primarytext(text: 'Name: Host Name $id"', fontSize: 12.sp, fontWeight: FontWeight.w500,
//                 textColor: appColors.blacktext),
//             Primarytext(text: 'Listing Name: Listing $id', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext),
//            Primarytext(text: 'Address: 123 Host Street, City', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                textColor: appColors.blacktext),
//            Primarytext(text: 'Phone: +1 123-456-7890', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                textColor: appColors.blacktext),
//             Primarytext(text: 'Tax ID: 123456789', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext),
//             Primarytext(text: 'Verification: Verified"', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext,),
//             Primarytext(text: 'Incomplete Profiles: No', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext),
//             Primarytext(text: 'Total Listings: 5', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext),
//             Primarytext(text: 'Bookings: 12', fontSize:12.sp, fontWeight:FontWeight.w400,
//                 textColor: appColors.blacktext),
//             Primarytext(text: 'Earning \$5000', fontSize: 12.sp, fontWeight: FontWeight.w400,
//                 textColor: appColors.blacktext)
//           ],
//         ),
//         trailing: Icon(Icons.more_vert),
//       ),
//     );
//   }
// }
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HostView extends StatelessWidget {
  const HostView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> data = [
      ['ID', 'Host Name', 'Listing Name', 'Number of Reviews', 'Price', 'Total Listings', 'Bookings', 'Earnings'],
      ['1', 'Host 1', 'Listing 1', '5', '\$100', '1', '10', '\$500'],
      ['2', 'Host 2', 'Listing 2', '10', '\$200', '2', '20', '\$1000'],
      ['3', 'Host 3', 'Listing 3', '15', '\$300', '3', '30', '\$1500'],
      ['4', 'Host 4', 'Listing 4', '20', '\$400', '4', '40', '\$2000'],
      ['5', 'Host 5', 'Listing 5', '25', '\$500', '5', '50', '\$2500'],
      ['6', 'Host 6', 'Listing 6', '30', '\$600', '6', '60', '\$3000'],
      ['7', 'Host 7', 'Listing 7', '35', '\$700', '7', '70', '\$3500'],
      ['8', 'Host 8', 'Listing 8', '40', '\$800', '8', '80', '\$4000'],
      ['9', 'Host 9', 'Listing 9', '45', '\$900', '9', '90', '\$4500'],
      ['10', 'Host 10', 'Listing 10', '50', '\$1000', '10', '100', '\$5000'],
    ];

    // Extract data for the chart
    final reviews = data.skip(1).map((row) => int.parse(row[3])).toList();
    final earnings = data.skip(1).map((row) => double.parse(row[7].replaceAll('\$', ''))).toList();

    return Scaffold(backgroundColor: appColors.whiteBG,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Table widget (as you already have)
              SingleChildScrollView(
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
                      _buildHeaderRow(data.first),
                      ..._buildDataRows(data.skip(1).toList()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Bar Chart widget
              Container(
                height: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: appColors.whiteBG,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
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
                          //   return 'Host ${value.toInt()}';
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
                          //   return '\$${value.toInt()}';
                          // },
                          // getTitlesTextStyle: (context, value) {
                          //   return TextStyle(fontSize: 12, color: Colors.black);
                          // },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(show: true),
                    barGroups: List.generate(reviews.length, (i) {
                      return BarChartGroupData(
                        x: i,
                        barRods: [
                          BarChartRodData(
                            toY: reviews[i].toDouble(),
                            color: Colors.blueAccent,
                            width: 16,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          BarChartRodData(
                            toY: earnings[i],
                            color: Colors.greenAccent,
                            width: 16,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildHeaderRow(List<String> headers) {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.blueAccent.shade100,
      ),
      children: headers.map((header) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            header,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
    );
  }

  List<TableRow> _buildDataRows(List<List<String>> rows) {
    return List<TableRow>.generate(
      rows.length,
          (index) {
        final isEvenRow = index % 2 == 0;
        return TableRow(
          decoration: BoxDecoration(
            color: isEvenRow ? Colors.grey.shade100 : Colors.white,
          ),
          children: rows[index].map((cell) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cell,
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
