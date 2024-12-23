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

// Separate StatefulWidget for Offers & Updates Tab
class OffersAndUpdatesScreen extends StatefulWidget {
  const OffersAndUpdatesScreen({super.key});

  @override
  State<OffersAndUpdatesScreen> createState() => _OffersAndUpdatesScreenState();
}

class _OffersAndUpdatesScreenState extends State<OffersAndUpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Offers and Updates Content',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

// Separate StatefulWidget for Account Tab
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Account Content',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
