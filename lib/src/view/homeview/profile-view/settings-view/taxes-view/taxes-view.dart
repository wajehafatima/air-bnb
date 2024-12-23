import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/tax-views/document-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/tax-views/taxpayers-view.dart';
import 'package:flutter/material.dart';

class TaxesView extends StatefulWidget {
  const TaxesView({super.key});

  @override
  State<TaxesView> createState() => _TaxesViewState();
}

class _TaxesViewState extends State<TaxesView>
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
        title: const Text('Taxes View'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(text: 'Tax Payers'),
            Tab(text: 'Documents'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          TaxPayersScreen(),
          DocumentsScreen(),
        ],
      ),
    );
  }
}
