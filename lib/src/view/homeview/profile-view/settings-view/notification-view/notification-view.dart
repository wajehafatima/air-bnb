import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification/account-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification/offers-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView>
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
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
            text: 'Notifications',
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            textColor: appColors.blacktext),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: appColors.secondary,
          labelColor: appColors.secondary,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(text: 'Offers & Updates'),
            Tab(text: 'Account'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          OffersAndUpdatesScreen(),
          AccountScreen(),
        ],
      ),
    );
  }
}
