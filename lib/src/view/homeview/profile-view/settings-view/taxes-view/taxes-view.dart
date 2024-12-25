import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/tax-views/document-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/tax-views/taxpayers-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        title:  Primarytext(text: 'Taxes', fontSize: 25.sp,
            fontWeight: FontWeight.w500, textColor: appColors.blacktext),
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
