import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
import 'package:air_bnb/admin_views/admin-home-view/payout-management-view/charges-view/charges-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/payout-management-view/manage-hosts-view/manage-hosts-view.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayoutManagementView extends StatefulWidget {
  const PayoutManagementView({super.key});

  @override
  State<PayoutManagementView> createState() => _PayoutManagementViewState();
}

class _PayoutManagementViewState extends State<PayoutManagementView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // Two tabs: Pending and Completed
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
          text: 'Payout Management',
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
            Tab(text: 'Manage hosts'),
            Tab(text: 'Charges'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Managehostsview(),
          Chargesview(),
        ],
      ),
    );
  }
}