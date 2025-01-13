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
        length: 2, vsync: this); // Two tabs: Manage Hosts and Charges
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
        backgroundColor: appColors.whiteBG,leading: IconButton(onPressed: (){Navigator.pop(context);

      },icon: Icon(Icons.arrow_back_ios),),
        title: Primarytext(
          text: 'Payout Management',
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.secondary,
          unselectedLabelColor: appColors.blacktext.withOpacity(0.7),
          indicatorColor: appColors.secondary,
          indicatorWeight: 3.0,
          tabs: [
            Tab(
        child: Primarytext(text: 'Manage Hosts', fontSize: 12.sp, fontWeight:FontWeight.w400,
            textColor: appColors.blacktext),
             // icon: Icon(Icons.account_balance, color: appColors.secondary),
            ),
            Tab(
              child: Primarytext(text: 'Charges', fontSize: 12.sp, fontWeight:FontWeight.w400,
                  textColor: appColors.blacktext),
              //icon: Icon(Icons.attach_money, color: appColors.secondary),
            ),
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
