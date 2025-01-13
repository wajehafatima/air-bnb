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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HostView extends StatelessWidget {
  const HostView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the table
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

    // Transpose the data for rows to become columns
    final transposedData = _transpose(data);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
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
                borderRadius: BorderRadius.circular(10.r),
              ),
              children: [
                _buildHeaderRow(transposedData.first),
                ..._buildDataRows(transposedData.skip(1).toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Creates the header row with bold text and a background color
  TableRow _buildHeaderRow(List<String> headers) {
    return TableRow(
      decoration: BoxDecoration(
        color: appColors.secondary.withOpacity(0.8)//Colors.blueAccent.shade100,
      ),
      children: headers.map((header) {
        return Padding(
          padding: EdgeInsets.all(12.0.w),
          child: Text(
            header,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
    );
  }

  /// Creates the data rows with alternating background colors
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
              padding: EdgeInsets.all(8.0.w),
              child: Text(
                cell,
                style: TextStyle(fontSize: 14.sp, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            );
          }).toList(),
        );
      },
    );
  }

  /// Transpose function to convert rows to columns and vice versa
  List<List<String>> _transpose(List<List<String>> data) {
    return List.generate(
      data[0].length,
          (i) => List.generate(data.length, (j) => data[j][i]),
    );
  }
}
