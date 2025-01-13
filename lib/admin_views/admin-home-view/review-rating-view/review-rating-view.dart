import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class ReviewRatingView extends StatefulWidget {
  const ReviewRatingView({super.key});

  @override
  State<ReviewRatingView> createState() => _ReviewRatingViewState();
}

class _ReviewRatingViewState extends State<ReviewRatingView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // Two tabs: Pending, All Reviews
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
        leading: IconButton(onPressed: (){Navigator.pop(context);

        },icon: Icon(Icons.arrow_back_ios),),
        elevation: 0,
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Review and Ratings',
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          textColor: appColors.blacktext,
        ),
      
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: appColors.whiteBG,
      //   title: Primarytext(
      //     text: 'Review and Ratings',
      //     fontSize: 22.sp,
      //     fontWeight: FontWeight.bold,
      //     textColor: appColors.blacktext,
      //   ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: appColors.secondary,
          unselectedLabelColor: appColors.grey,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3,
              color: appColors.secondary,
            ),
          ),
          tabs: const [
            Tab(text: 'Pending Reviews'),
            Tab(text: 'All Reviews'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PendingReviewsView(), // Approve or Remove Reviews
          AllReviewsView(), // Display all reviews
        ],
      ),
    );
  }
}

// Pending Reviews Tab
class PendingReviewsView extends StatelessWidget {
  const PendingReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 5, // Example: 5 pending reviews
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Primarytext(
                          text: "Review from User ${index + 1}",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          textColor: appColors.blacktext,
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pharetra velit.",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: appColors.grey,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Approve review logic
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: appColors.secondary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Primarytext(
                                text: "Approve",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                textColor: appColors.whiteBG,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            ElevatedButton(
                              onPressed: () {
                                // Remove review logic
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: appColors.secondary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Primarytext(
                                text: "Remove",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                textColor: appColors.whiteBG,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// All Reviews Tab
class AllReviewsView extends StatelessWidget {
  const AllReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 10, // Example: 10 total reviews
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Primarytext(
                          text: "Review by User ${index + 1}",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          textColor: appColors.blacktext,
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi.",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: appColors.grey,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            Icon(
                              Icons.star,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            Icon(
                              Icons.star,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            Icon(
                              Icons.star_half,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            Icon(
                              Icons.star_border,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
