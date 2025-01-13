import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class BookingManagement extends StatefulWidget {
  const BookingManagement({super.key});

  @override
  State<BookingManagement> createState() => _BookingManagementState();
}

class _BookingManagementState extends State<BookingManagement>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // Two tabs: Bookings and Notifications
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
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Booking Management',
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.secondary,
          unselectedLabelColor: appColors.blacktext,
          indicatorColor: appColors.secondary,
          tabs: const [
            Tab(text: 'Track Bookings'),
            Tab(text: 'Notifications'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TrackBookingsTab(),
          NotificationsTab(),
        ],
      ),
    );
  }
}
class TrackBookingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: appColors.whiteBG,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: DataTable(
            headingRowHeight: 60,
            dataRowHeight: 70,
            headingTextStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: appColors.primary,
            ),
            columns: [
              DataColumn(
                label: Text(
                  'Booking #',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColors.primary,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColors.primary,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Actions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColors.primary,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
            rows: List.generate(10, (index) {
              return DataRow(
                color: MaterialStateProperty.all(
                  index % 2 == 0
                      ? appColors.primary.withOpacity(0.2)  // Soft light blue for even rows
                      : appColors.whiteBG,
                ),
                cells: [
                  DataCell(Primarytext(
                    text: 'Booking #${index + 1}',
                    textColor: appColors.blacktext,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  )),
                  DataCell(Primarytext(
                    text: 'Details about booking #${index + 1}',
                    textColor: appColors.blacktext,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
                  DataCell(Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: appColors.primary,
                          size: 24.sp,
                        ),
                        onPressed: () {
                          // Handle Edit Action
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: appColors.secondary,
                          size: 24.sp,
                        ),
                        onPressed: () {
                          // Handle Delete Action
                        },
                      ),
                    ],
                  )),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}


// class TrackBookingsTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.0.w),
//       child: ListView.builder(
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Card(color: appColors.whiteBG,
//             elevation: 5,
//             margin: EdgeInsets.symmetric(vertical: 8.0.h),
//             child: ListTile(
//               title: Primarytext(text: 'Booking #${index + 1}',
//                   textColor: appColors.blacktext,
//                       fontSize: 18.sp, fontWeight: FontWeight.w600),
//               subtitle: Primarytext(text: 'Details about booking #${index + 1}',textColor: appColors.blacktext,fontWeight: FontWeight.w400,
//                  fontSize: 14.sp,),
//               trailing: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.edit, color: appColors.grey),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.delete, color: appColors.secondary),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class NotificationsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(text: 'Automated notifications', fontSize:20.sp, fontWeight:FontWeight.w600,
              textColor: appColors.blacktext
          ),
          SizedBox(height: 16.h),
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Primarytext(text: 'Check-in Notification', fontSize: 16.sp, fontWeight: FontWeight.w600,
                textColor: appColors.blacktext),
            subtitle: Primarytext(text: 'Sent on arrival date to guest and host.', fontSize: 14.sp, fontWeight:FontWeight.w500,
                textColor:appColors.blacktext),
          ),
          ListTile(
            leading: Icon(Icons.check_circle_outline, color: Colors.blue),
            title: Primarytext(text:'Check-out Notification',
                fontSize: 16.sp,textColor: appColors.blacktext,fontWeight: FontWeight.w600),
            subtitle: Primarytext(text: 'Sent on departure date to guest and host.''Sent on departure date to guest and host.',
                fontSize: 14.sp, fontWeight: FontWeight.w500, textColor: appColors.blacktext)
          ),
          ListTile(
            leading: Icon(Icons.confirmation_num, color: Colors.orange),
            title:
               Primarytext(text: 'Booking Confirmation', fontSize: 16.sp, fontWeight: FontWeight.w600,
                   textColor: appColors.blacktext),
            subtitle: Primarytext(text: 'Sent upon successful booking.', fontSize: 14.sp, fontWeight: FontWeight.w500,
                textColor: appColors.blacktext)),

          ListTile(
            leading: Icon(Icons.cancel, color: Colors.red),
            title:
               Primarytext(text: 'Booking Cancellation', fontSize: 16.sp, fontWeight: FontWeight.w600,
                   textColor: appColors.blacktext),
            subtitle:Primarytext(text: 'Sent upon booking cancellation.', fontSize: 14.sp, fontWeight: FontWeight.w500,
                textColor:appColors.blacktext),
          ),
        ],
      ),
    );
  }
}
