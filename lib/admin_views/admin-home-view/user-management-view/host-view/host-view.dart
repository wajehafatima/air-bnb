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
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HostView extends StatelessWidget {
  const HostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Allows horizontal scrolling for wide tables
          child: DataTable(
            columnSpacing: 16.w, // Adjust spacing between columns
            headingRowColor: MaterialStateProperty.resolveWith(
                    (states) => appColors.secondary),
            border: TableBorder(
              horizontalInside: BorderSide(color: appColors.grey, width: 0.5),
            ),
            columns: const [
              DataColumn(label: Text('ID',)),
              DataColumn(label: Text('Host Name')),
              DataColumn(label: Text('Listing Name')),
              DataColumn(label: Text('Number of Reviews')),
              DataColumn(label: Text('Price')),
              DataColumn(label: Text('Total Listings')),
              DataColumn(label: Text('Bookings')),
              DataColumn(label: Text('Earnings')),
            ],
            rows: _generateTableRows(),
          ),
        ),

    );
  }

  // Function to generate table rows dynamically
  List<DataRow> _generateTableRows() {
    return List.generate(10, (index) {
      return DataRow(
        cells: [
          DataCell(Text('ID: $index')),
          DataCell(Text('Host Name $index')),
          DataCell(Text('Listing $index')),
          DataCell(Text('${(index + 1) * 5} Reviews')),
          DataCell(Text('\$${(index + 1) * 100}')),
          DataCell(Text('${(index + 1)} Listings')),
          DataCell(Text('${(index + 2) * 10} Bookings')),
          DataCell(Text('\$${(index + 1) * 500}')),
        ],
      );
    });
  }
}
