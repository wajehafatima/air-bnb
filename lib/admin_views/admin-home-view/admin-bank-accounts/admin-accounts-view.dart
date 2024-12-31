import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class AdminAccountsVieww extends StatefulWidget {
  const AdminAccountsVieww({super.key});

  @override
  State<AdminAccountsVieww> createState() => _AdminAccountsViewwState();
}

class _AdminAccountsViewwState extends State<AdminAccountsVieww>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Two tabs
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
        elevation: 0,
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Admin Bank',
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.secondary,
          unselectedLabelColor: appColors.grey,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3,
              color: appColors.secondary,
            ),
          ),
          tabs: const [
            Tab(text: 'Payments Received'),
            Tab(text: 'Payments to Hosts'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PaymentsReceivedView(), // For payments received from guests
          PaymentsToHostsView(), // For payments made to hosts
        ],
      ),
    );
  }
}

// Payments Received Tab
class PaymentsReceivedView extends StatelessWidget {
  const PaymentsReceivedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 5, // Example: 5 received payments
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Primarytext(
                          text: "Payment from Guest ${index + 1}",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          textColor: appColors.blacktext,
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text: "Amount: \$${(1000 + index * 200)}",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          textColor: appColors.secondary,
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text: "Date: 2023-12-${index + 10}",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: appColors.grey,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            SizedBox(width: 6.w),
                            Primarytext(
                              text: "Completed",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              textColor: appColors.linkBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Payments to Hosts Tab
class PaymentsToHostsView extends StatelessWidget {
  const PaymentsToHostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 5, // Example: 5 payments to hosts
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Primarytext(
                          text: "Payment to Host ${index + 1}",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          textColor: appColors.blacktext,
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text: "Amount: \$${(800 + index * 150)}",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          textColor: appColors.secondary,
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text: "Date: 2023-12-${index + 15}",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: appColors.grey,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.pending_actions,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            SizedBox(width: 6.w),
                            Primarytext(
                              text: "Pending",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              textColor: appColors.secondary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
