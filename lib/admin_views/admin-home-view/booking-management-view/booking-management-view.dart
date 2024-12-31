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
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(vertical: 8.0.h),
            child: ListTile(
              title: Text('Booking #${index + 1}',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
              subtitle: Text('Details about booking #${index + 1}',
                  style: TextStyle(fontSize: 14.sp)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: appColors.secondary),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class NotificationsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Automated Notifications',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 16.h),
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text('Check-in Notification',
                style: TextStyle(fontSize: 16.sp)),
            subtitle: Text('Sent on arrival date to guest and host.',
                style: TextStyle(fontSize: 14.sp)),
          ),
          ListTile(
            leading: Icon(Icons.check_circle_outline, color: Colors.blue),
            title: Text('Check-out Notification',
                style: TextStyle(fontSize: 16.sp)),
            subtitle: Text('Sent on departure date to guest and host.',
                style: TextStyle(fontSize: 14.sp)),
          ),
          ListTile(
            leading: Icon(Icons.confirmation_num, color: Colors.orange),
            title:
                Text('Booking Confirmation', style: TextStyle(fontSize: 16.sp)),
            subtitle: Text('Sent upon successful booking.',
                style: TextStyle(fontSize: 14.sp)),
          ),
          ListTile(
            leading: Icon(Icons.cancel, color: Colors.red),
            title:
                Text('Booking Cancellation', style: TextStyle(fontSize: 16.sp)),
            subtitle: Text('Sent upon booking cancellation.',
                style: TextStyle(fontSize: 14.sp)),
          ),
        ],
      ),
    );
  }
}
