import 'package:air_bnb/admin_views/admin-home-view/user-management-view/guests-view/guest-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/user-management-view/host-view/host-view.dart';

import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Assuming AppColors is defined somewhere in your project


class UserManagementView extends StatefulWidget {
  const UserManagementView({super.key});

  @override
  State<UserManagementView> createState() => _UserManagementViewState();
}

class _UserManagementViewState extends State<UserManagementView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Two tabs: Guests and Hosts
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
          icon:Icon(Icons.arrow_back_ios,color: appColors.blacktext,)),
        title: Primarytext(
          text: 'User Management',
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.blacktext,
          indicatorColor: Color(0xffF1510C),
          unselectedLabelColor: appColors.grey,
          tabs:  [
            Tab(child: Primarytext(text: 'Hosts', fontSize: 12.sp, fontWeight: FontWeight.w400, textColor:appColors.grey,),),
            Tab(child: Primarytext(text: 'Guests', fontSize: 12.sp, fontWeight: FontWeight.w400, textColor:appColors.grey,),),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HostView(),
          Guestview()
        ],
      ),
    );
  }
}
