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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HostView extends StatelessWidget {
  const HostView({super.key});

  @override
  Widget build(BuildContext context) {
    // Expanded sample data with more rows
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
      ['11', 'Host 11', 'Listing 11', '55', '\$1100', '11', '110', '\$5500'],
      ['12', 'Host 12', 'Listing 12', '60', '\$1200', '12', '120', '\$6000'],
      ['13', 'Host 13', 'Listing 13', '65', '\$1300', '13', '130', '\$6500'],
      ['14', 'Host 14', 'Listing 14', '70', '\$1400', '14', '140', '\$7000'],
      ['15', 'Host 15', 'Listing 15', '75', '\$1500', '15', '150', '\$7500'],
    ];

    // Transpose the data (convert rows to columns and vice versa)
    final transposedData = _transpose(data);

    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Scroll horizontally for wide tables
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Scroll vertically for tall tables
          child: Table(
            border: TableBorder.all(color: Colors.grey, width: 0.5),
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(120), // Fix the first column width
            },
            defaultColumnWidth: IntrinsicColumnWidth(), // Adjust column width to content
            children: transposedData.map((row) {
              return TableRow(
                children: row.map((cell) {
                  return Padding(
                    padding: EdgeInsets.all(8.0.w),
                    child: Text(
                      cell,
                      style: TextStyle(fontSize: 14.sp),
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  /// Transpose function: Converts rows to columns and columns to rows
  List<List<String>> _transpose(List<List<String>> data) {
    return List.generate(
      data[0].length,
          (i) => List.generate(data.length, (j) => data[j][i]),
    );
  }
}
  