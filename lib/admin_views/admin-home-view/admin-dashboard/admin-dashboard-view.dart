import 'package:air_bnb/admin_views/admin-home-view/admin-dashboard/Overview-view/overview-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/admin-dashboard/charts-View/charts-view.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({super.key});

  @override
  State<AdminDashboardView> createState() => _AdminDashboardViewState();
}

class _AdminDashboardViewState extends State<AdminDashboardView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Adjust the length based on your tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title: Primarytext(text: 'Admin dashboard', fontSize: 25.sp, fontWeight: FontWeight.w500,
            textColor: appColors.blacktext),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.blacktext,
          unselectedLabelColor: appColors.blacktext,
          indicatorColor: appColors.secondary,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'Charts'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        OverviewView(),
        Chartsview()
        ],
      ),
    );
  }
}
