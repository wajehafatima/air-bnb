import 'package:air_bnb/admin_views/admin-home-view/manageent-views/approve-reject.view/approve.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/constants/colors/appColors.dart';

class Managementview extends StatefulWidget {
  const Managementview({super.key});

  @override
  State<Managementview> createState() => _ManagementviewState();
}

class _ManagementviewState extends State<Managementview>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Three tabs
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
          Test(),
          Test(),
          Test(),
        ],
      ),
    );
    ;
  }
}
