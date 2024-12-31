import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/cancellation-view/cancellation-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/refund-view/refund-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/total-earning-view/total-earning-view.dart';

import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarningManagementView extends StatefulWidget {
  const EarningManagementView({super.key});

  @override
  State<EarningManagementView> createState() => _EarningManagementViewState();
}

class _EarningManagementViewState extends State<EarningManagementView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Three tabs
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
          text: 'Earning Management',
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.blacktext,
          unselectedLabelColor: appColors.blacktext,
          indicatorColor: appColors.secondary,
          tabs: const [
            Tab(text: 'Total earnings'),
            Tab(text: 'Refunds'),
            Tab(text: 'Cancellation'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Totalearningview(),
          Refundview(),
          Cancellationview(),
        ],
      ),
    );
  }
}
