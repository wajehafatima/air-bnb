import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class Listingview extends StatefulWidget {
  const Listingview({super.key});

  @override
  State<Listingview> createState() => _ListingviewState();
}

class _ListingviewState extends State<Listingview>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
          text: 'Listing Management',
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.blacktext,
          indicatorColor: appColors.secondary,
          unselectedLabelColor: appColors.grey,
          tabs: [
            Tab(child: Primarytext(text: 'Manage listing', fontSize: 12.sp, fontWeight:FontWeight.w500, textColor: appColors.grey),),
            Tab(child: Primarytext(text: 'Control Ranking', fontSize: 12.sp, fontWeight:FontWeight.w500, textColor: appColors.grey),),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ManageListingsWidget(),
          ControlRankingWidget(),
        ],
      ),
    );
  }
}

class ManageListingsWidget extends StatelessWidget {
  const ManageListingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(

          height: 160.h,
          width: 340.w,
          decoration: BoxDecoration(
            color: appColors.whiteBG,
            border: Border.all(color: appColors.grey),
            borderRadius: BorderRadius.circular(15),

          ),
          margin: EdgeInsets.only(bottom: 16.h),

          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Primarytext(
                  text: "Listing #${index + 1}",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 10.h),
                Primarytext(text: 'Host ID: 1', fontSize: 14.sp, fontWeight: FontWeight.w300, textColor: AppColors.blackText),
                SizedBox(height: 10.h,),
                Primarytext(text: 'Host name: John', fontSize: 14.sp, fontWeight: FontWeight.w300, textColor: AppColors.blackText),
                SizedBox(height: 10.h),
                Primarytext(
                  text: "Status: Pending Approval",
                  fontSize: 14.sp,
                  textColor: appColors.grey,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30.h,width: 140.w,
                      decoration:BoxDecoration(color: appColors.whiteBG,
                          borderRadius: BorderRadius.circular(5),

                          border: Border.all(color: appColors.grey)),
                      child:
                           TextButton(onPressed: (){},
                             child: Primarytext(
                                text: 'Approve',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                textColor: appColors.blacktext),
                           )),

                    Container(
                        height: 30.h,width: 140.w,
                        decoration:BoxDecoration(color: appColors.whiteBG,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: appColors.grey)),
                        child:
                        TextButton(onPressed: (){},
                          child: Primarytext(
                              text: 'Reject',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              textColor: appColors.blacktext),
                          
                        )),

                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ControlRankingWidget extends StatelessWidget {
  const ControlRankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: appColors.whiteBG,
          elevation: 5,
          margin: EdgeInsets.only(bottom: 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Primarytext(
                  text: "Listing #${index + 1}",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  textColor: appColors.blacktext,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_upward,
                        color: appColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_downward,
                        color: appColors.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
