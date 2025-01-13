import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class ConversationMonitoringView extends StatefulWidget {
  const ConversationMonitoringView({super.key});

  @override
  State<ConversationMonitoringView> createState() =>
      _ConversationMonitoringViewState();
}

class _ConversationMonitoringViewState extends State<ConversationMonitoringView>
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
        elevation: 0,
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Conversation Monitoring',
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
          textColor: appColors.blacktext,
        ),
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
            Tab(text: 'Pending Moderation'),
            Tab(text: 'All Conversations'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PendingModerationView(), // For conversations awaiting moderation
          AllConversationsView(), // For all admin inbox conversations
        ],
      ),
    );
  }
}

// Pending Moderation Tab
// class PendingModerationView extends StatelessWidget {
//   const PendingModerationView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: ListView.separated(
//               itemCount: 5, // Example: 5 pending conversations
//               separatorBuilder: (context, index) => SizedBox(height: 10.h),
//               itemBuilder: (context, index) {
//                 return Card(
//                   elevation: 4,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(16.w),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Primarytext(
//                               text: "User ${index + 1}",
//                               fontSize: 18.sp,
//                               fontWeight: FontWeight.w600,
//                               textColor: appColors.blacktext,
//                             ),
//                             Primarytext(
//                               text: "Pending",
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w400,
//                               textColor: appColors.secondary,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 8.h),
//                         Primarytext(
//                           text:
//                               "This conversation contains sensitive details before booking confirmation.",
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.w400,
//                           textColor: appColors.grey,
//                         ),
//                         SizedBox(height: 12.h),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Delete conversation logic
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: appColors.secondary,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8.r),
//                                 ),
//                               ),
//                               child: Primarytext(
//                                 text: "Delete",
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w500,
//                                 textColor: appColors.whiteBG,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class PendingModerationView extends StatelessWidget {
  const PendingModerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return
     Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 5, // Example: 5 pending conversations
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemBuilder: (context, index) {
                  return Card(
                    color: appColors.secondary,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Primarytext(
                                text: "User ${index + 1}",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                textColor: appColors.whiteBG,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.h, horizontal: 8.w),
                                decoration: BoxDecoration(
                                  color: appColors.whiteBG.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Primarytext(
                                  text: "Pending",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  textColor: appColors.secondary,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Primarytext(
                            text:
                            "This conversation contains sensitive details before booking confirmation.",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            textColor: appColors.whiteBG.withOpacity(0.8),
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.h, horizontal: 8.w),
                                decoration: BoxDecoration(
                                  color: appColors.whiteBG.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Primarytext(
                                  text: "  Delete  ",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  textColor: appColors.secondary,
                                ),
                              ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     // Delete conversation logic
                              //   },
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: appColors.whiteBG,
                              //     padding: EdgeInsets.symmetric(
                              //         vertical: 10.h, horizontal: 20.w),
                              //     shape: RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(8.r),
                              //     ),
                              //     elevation: 2,
                              //   ),
                              //   child: Primarytext(
                              //     text: "Delete",
                              //     fontSize: 14.sp,
                              //     fontWeight: FontWeight.w500,
                              //     textColor: appColors.secondary,
                              //   ),
                              // ),
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

// All Conversations Tab
class AllConversationsView extends StatelessWidget {
  const AllConversationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 10, // Example: 10 total conversations
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) {
                return Card(
                  color: appColors.secondary,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Primarytext(
                              text: "User ${index + 1}",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              textColor: appColors.blacktext,
                            ),
                            Primarytext(
                              text: "Active",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textColor: appColors.linkBlue,
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Primarytext(
                          text:
                              "This is a conversation that has already been reviewed by the admin.",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: appColors.grey,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            Icon(
                              Icons.message_rounded,
                              color: appColors.secondary,
                              size: 20.r,
                            ),
                            SizedBox(width: 8.w),
                            Primarytext(
                              text: "View Conversation",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              textColor: appColors.secondary,
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
