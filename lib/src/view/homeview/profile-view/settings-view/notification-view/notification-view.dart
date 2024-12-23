import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification/account-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification/offers-view.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Notification View'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          labelColor: Colors.red,
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
