import 'package:air_bnb/admin_views/admin-home-view/about-section-view/about-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/admin-bank-accounts/admin-accounts-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/analytics-reports-view/analytics-reports-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/booking-management-view/booking-management-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/calender-view/calender-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/control-hosting-view/control-hosting-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/conversation-monitoring-view/conversation-monitoring-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/earning-management-view/earning-management-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/listing-management-view/listing-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
import 'package:air_bnb/admin_views/admin-home-view/payment-views/payemnt-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/payout-management-view/payout-management-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/review-rating-view/review-rating-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/support-tickets-view/support-tickets.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../src/controller/assets/appIcons/appIcons.dart';
import '../../src/controller/assets/appImages/appImages.dart';
import '../../src/controller/components/primaryText.dart';
import '../../src/controller/components/profileDetails.dart';
import '../../src/controller/constants/colors/appColors.dart';

class AdminHomeView extends StatefulWidget {
  const AdminHomeView({super.key});

  @override
  State<AdminHomeView> createState() => _AdminHomeViewState();
}

class _AdminHomeViewState extends State<AdminHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.whiteBG,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Primarytext(
                        text: 'Profile',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        textColor: appColors.blacktext),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: appColors.blacktext,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage(appImages.dp),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      children: [
                        Primarytext(
                            text: 'Username',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            textColor: appColors.blacktext),
                        Primarytext(
                            text: 'Show profile',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w300,
                            textColor: appColors.blacktext),
                      ],
                    ),
                    SizedBox(
                      width: 140.w,
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                SizedBox(
                  height: 5.w,
                ),
                Divider(),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 70.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                      color: appColors.whiteBG,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(blurRadius: 2, color: appColors.grey),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Primarytext(
                                text: 'Airbnb your home',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                textColor: appColors.blacktext,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Primarytext(
                                  text:
                                      'It\'s easy to start hosting and earn extra income',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  textColor: appColors.blacktext)
                            ],
                          ),
                        ),
                        Image.asset(
                          appIcons.home,
                          width: 60.w,
                          height: 60.h,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Divider(),
                SizedBox(
                  height: 10.h,
                ),
                ProfileDetails(
                  icon: Icons.admin_panel_settings,
                  text: 'Admin dashboard',
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => Managementview()));
                  },
                ),
                ProfileDetails(
                  icon: Icons.manage_history,
                  text: 'User management',
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => Payemntssview()));
                  },
                ),
                ProfileDetails(
                    icon: Icons.list_alt_outlined,
                    text: 'Listing management',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Listingview()));
                    }),
                ProfileDetails(
                    icon: Icons.book,
                    text: 'Booking management',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => BookingManagement()));
                    }),
                ProfileDetails(
                    icon: Icons.monetization_on,
                    text: 'Earning management',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => EarningManagementView()));
                    }),
                ProfileDetails(
                    icon: Icons.payment_outlined,
                    text: 'Payout management',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => PayoutManagementView()));
                    }),
                ProfileDetails(
                    icon: Icons.notifications_active_outlined,
                    text: 'Notifications',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => NotificationView()));
                    }),
                ProfileDetails(
                    icon: Icons.airplane_ticket_outlined,
                    text: 'Support tickets and customer',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Supporttickets()));
                    }),
                ProfileDetails(
                    icon: Icons.rate_review_outlined,
                    text: 'Reviews and ratings',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Reviewratingview()));
                    }),
                ProfileDetails(
                    icon: Icons.phone_in_talk,
                    text: 'conversation monitoring',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) =>
                                  Conversationmonitoringview()));
                    }),
                ProfileDetails(
                    icon: Icons.comment_bank,
                    text: 'Admin bank accounts',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Adminaccountsview()));
                    }),
                ProfileDetails(
                    icon: Icons.calendar_month,
                    text: 'Calender',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Calenderview()));
                    }),
                ProfileDetails(
                    icon: Icons.analytics_outlined,
                    text: 'Analytics and report',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Analyticsreportsview()));
                    }),
                ProfileDetails(
                    icon: Icons.control_point_duplicate_outlined,
                    text: 'Control hosting',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Controlhostingview()));
                    }),
                ProfileDetails(
                    icon: Icons.info_outline,
                    text: 'About',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Aboutview()));
                    }),
              ],
            ),
          ),
        ));
  }
}

// //------------------------------------------------
// import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
// import 'package:air_bnb/admin_views/admin-home-view/payment-views/payemnt-view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// // Main entry point for the app
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: AdminLoginScreen(),
//     );
//   }
// }
//
// class AdminLoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Admin Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'Email', border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'Password', border: OutlineInputBorder()),
//               obscureText: true,
//             ),
//             SizedBox(height: 24.0),
//             CustomButton(
//               onPressed: () {
//                 // Navigate to the Dashboard Overview after login
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DashboardOverviewScreen(
//                         // totalUsers: 100,
//                         // totalListings: 50,
//                         // pendingApprovals: 5,
//                         // ongoingDisputes: 2,
//                         // totalTransactions: 200,
//                         ),
//                   ),
//                 );
//               },
//               title: 'Login',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // dashboard_overview_screen.dart
//
// class DashboardOverviewScreen extends StatelessWidget {
//   final int totalUsers = 50;
//   final int totalListings = 30;
//   final int pendingApprovals = 5;
//   final int ongoingDisputes = 2;
//   final int totalTransactions = 100;
//   List<Map<String, dynamic>> sampleDisputes = [
//     {
//       'id': 'D12345',
//       'customer': 'John Doe',
//       'status': 'Under Review',
//     },
//     {
//       'id': 'D12346',
//       'customer': 'Jane Smith',
//       'status': 'Resolved',
//     },
//     {
//       'id': 'D12347',
//       'customer': 'Robert Brown',
//       'status': 'Pending',
//     },
//     {
//       'id': 'D12348',
//       'customer': 'Emily Davis',
//       'status': 'Escalated',
//     },
//   ];
//   final List<UserModel> users = [
//     UserModel(
//         id: '1',
//         name: 'John Doe',
//         email: 'johndoe@example.com',
//         isActive: true),
//     UserModel(
//         id: '2',
//         name: 'Jane Smith',
//         email: 'janesmith@example.com',
//         isActive: false),
//     UserModel(
//         id: '3',
//         name: 'Robert Brown',
//         email: 'robertbrown@example.com',
//         isActive: true),
//     // Add more users here
//   ];
//   List<Map<String, dynamic>> sampleTransactions = [
//     {
//       'id': 'T12345',
//       'amount': 250.00,
//       'status': 'Completed',
//     },
//     {
//       'id': 'T12346',
//       'amount': 100.00,
//       'status': 'Pending',
//     },
//     {
//       'id': 'T12347',
//       'amount': 500.00,
//       'status': 'Failed',
//     },
//     {
//       'id': 'T12348',
//       'amount': 150.00,
//       'status': 'Completed',
//     },
//   ];
//   final List<Map<String, String>> pendingListings = [
//     {'title': 'Listing 1', 'description': 'Description for listing 1'},
//     {'title': 'Listing 2', 'description': 'Description for listing 2'},
//     {'title': 'Listing 3', 'description': 'Description for listing 3'},
//     // Add more listings here
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard Overview'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             DashboardCard(
//               title: 'Total Users',
//               value: totalUsers.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => UserManagementScreen(users: users),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Total Listings',
//               value: totalListings.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ListingApprovalScreen(pendingListings: pendingListings),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Pending Approvals',
//               value: pendingApprovals.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ListingApprovalScreen(pendingListings: []),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Ongoing Disputes',
//               value: ongoingDisputes.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         DisputeResolutionScreen(disputes: sampleDisputes),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Total Transactions',
//               value: totalTransactions.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         TransactionsScreen(transactions: sampleTransactions),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class DashboardCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final VoidCallback onTap;
//
//   DashboardCard(
//       {required this.title, required this.value, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: ListTile(
//         title: Text(title),
//         subtitle: Text(value),
//         onTap: onTap,
//       ),
//     );
//   }
// }
//
// class DisputeResolutionScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> disputes;
//
//   DisputeResolutionScreen({required this.disputes});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ongoing Disputes'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: disputes.length,
//           itemBuilder: (context, index) {
//             final dispute = disputes[index];
//             return Card(
//               margin: EdgeInsets.symmetric(vertical: 8.0),
//               child: ListTile(
//                 title: Text('Dispute ID: ${dispute['id']}'),
//                 subtitle: Text('Customer: ${dispute['customer']}'),
//                 trailing: Text(dispute['status']),
//                 onTap: () {
//                   // Handle on tap if needed
//                   print('Tapped on dispute ${dispute['id']}');
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class TransactionsScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> transactions;
//
//   TransactionsScreen({required this.transactions});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Transactions'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: transactions.length,
//           itemBuilder: (context, index) {
//             final transaction = transactions[index];
//             return Card(
//               margin: EdgeInsets.symmetric(vertical: 8.0),
//               child: ListTile(
//                 title: Text('Transaction ID: ${transaction['id']}'),
//                 subtitle: Text('Amount: \$${transaction['amount']}'),
//                 trailing: Text(transaction['status']),
//                 onTap: () {
//                   // Handle on tap if needed
//                   print('Tapped on ${transaction['id']}');
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// // custom_button.dart
//
// class CustomButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onPressed;
//
//   CustomButton({required this.title, required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
//         decoration: BoxDecoration(
//           color: Colors.blueAccent,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Center(
//           child: Text(
//             title,
//             style: TextStyle(color: Colors.white, fontSize: 16.0),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // user_management_screen.dart
//
// class UserManagementScreen extends StatelessWidget {
//   final List<UserModel> users;
//
//   UserManagementScreen({required this.users});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('User Management')),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (context, index) {
//           return UserListTile(
//             user: users[index],
//             onDeactivate: () {
//               // Logic to deactivate user
//               print("Deactivating user: ${users[index].name}");
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class UserListTile extends StatelessWidget {
//   final UserModel user;
//   final VoidCallback onDeactivate;
//
//   UserListTile({required this.user, required this.onDeactivate});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8.0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 5,
//       child: ListTile(
//         title: Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text(user.email),
//         trailing: IconButton(
//           icon: Icon(user.isActive ? Icons.lock_open : Icons.lock),
//           onPressed: onDeactivate,
//         ),
//       ),
//     );
//   }
// }
//
// class UserModel {
//   final String id;
//   final String name;
//   final String email;
//   final bool isActive;
//
//   UserModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.isActive,
//   });
// }
//
// // listing_approval_screen.dart
//
// class ListingApprovalScreen extends StatelessWidget {
//   final List<Map<String, String>> pendingListings;
//
//   ListingApprovalScreen({required this.pendingListings});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Listing Approval')),
//       body: ListView.builder(
//         itemCount: pendingListings.length,
//         itemBuilder: (context, index) {
//           final listing = pendingListings[index];
//           return ListingTile(
//             title: listing['title'] ?? 'No Title',
//             description: listing['description'] ?? 'No Description',
//             onApprove: () {
//               // Approve listing logic
//               print('Approving listing: ${listing['title']}');
//             },
//             onReject: () {
//               // Reject listing logic
//               print('Rejecting listing: ${listing['title']}');
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ReviewsRatingsScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> reviews;
//
//   ReviewsRatingsScreen({required this.reviews});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Reviews & Ratings')),
//       body: ListView.builder(
//         itemCount: reviews.length,
//         itemBuilder: (context, index) {
//           final review = reviews[index];
//           return ListTile(
//             title: Text(review['user'] ?? 'Anonymous'),
//             subtitle: Text(review['comment'] ?? 'No Comment'),
//             trailing: Icon(
//               Icons.star,
//               color: Colors.amber,
//               size: 24.0,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class PaymentSetupScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Payment Setup')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'bKash/Nagad Number',
//                   border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'Bank Details', border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16.0),
//             CustomButton(
//               title: 'Save Payment Details',
//               onPressed: () {
//                 // Save payment details logic
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ListingTile extends StatelessWidget {
//   final String title;
//   final String description;
//   final VoidCallback onApprove;
//   final VoidCallback onReject;
//
//   ListingTile({
//     required this.title,
//     required this.description,
//     required this.onApprove,
//     required this.onReject,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8.0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 5,
//       child: ListTile(
//         title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text(description),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CustomButton(
//               onPressed: onApprove,
//               title: 'Approve',
//             ),
//             SizedBox(width: 8.0),
//             CustomButton(
//               onPressed: onReject,
//               title: 'Reject',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//------------------------------------------------
// import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
// import 'package:air_bnb/admin_views/admin-home-view/payment-views/payemnt-view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// // Main entry point for the app
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: AdminLoginScreen(),
//     );
//   }
// }

// class AdminLoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Admin Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'Email', border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'Password', border: OutlineInputBorder()),
//               obscureText: true,
//             ),
//             SizedBox(height: 24.0),
//             CustomButton(
//               onPressed: () {
//                 // Navigate to the Dashboard Overview after login
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DashboardOverviewScreen(
//                         // totalUsers: 100,
//                         // totalListings: 50,
//                         // pendingApprovals: 5,
//                         // ongoingDisputes: 2,
//                         // totalTransactions: 200,
//                         ),
//                   ),
//                 );
//               },
//               title: 'Login',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // dashboard_overview_screen.dart

// class DashboardOverviewScreen extends StatelessWidget {
//   final int totalUsers = 50;
//   final int totalListings = 30;
//   final int pendingApprovals = 5;
//   final int ongoingDisputes = 2;
//   final int totalTransactions = 100;
//   List<Map<String, dynamic>> sampleDisputes = [
//     {
//       'id': 'D12345',
//       'customer': 'John Doe',
//       'status': 'Under Review',
//     },
//     {
//       'id': 'D12346',
//       'customer': 'Jane Smith',
//       'status': 'Resolved',
//     },
//     {
//       'id': 'D12347',
//       'customer': 'Robert Brown',
//       'status': 'Pending',
//     },
//     {
//       'id': 'D12348',
//       'customer': 'Emily Davis',
//       'status': 'Escalated',
//     },
//   ];
//   final List<UserModel> users = [
//     UserModel(
//         id: '1',
//         name: 'John Doe',
//         email: 'johndoe@example.com',
//         isActive: true),
//     UserModel(
//         id: '2',
//         name: 'Jane Smith',
//         email: 'janesmith@example.com',
//         isActive: false),
//     UserModel(
//         id: '3',
//         name: 'Robert Brown',
//         email: 'robertbrown@example.com',
//         isActive: true),
//     // Add more users here
//   ];
//   List<Map<String, dynamic>> sampleTransactions = [
//     {
//       'id': 'T12345',
//       'amount': 250.00,
//       'status': 'Completed',
//     },
//     {
//       'id': 'T12346',
//       'amount': 100.00,
//       'status': 'Pending',
//     },
//     {
//       'id': 'T12347',
//       'amount': 500.00,
//       'status': 'Failed',
//     },
//     {
//       'id': 'T12348',
//       'amount': 150.00,
//       'status': 'Completed',
//     },
//   ];
//   final List<Map<String, String>> pendingListings = [
//     {'title': 'Listing 1', 'description': 'Description for listing 1'},
//     {'title': 'Listing 2', 'description': 'Description for listing 2'},
//     {'title': 'Listing 3', 'description': 'Description for listing 3'},
//     // Add more listings here
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard Overview'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             DashboardCard(
//               title: 'Total Users',
//               value: totalUsers.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => UserManagementScreen(users: users),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Total Listings',
//               value: totalListings.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ListingApprovalScreen(pendingListings: pendingListings),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Pending Approvals',
//               value: pendingApprovals.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ListingApprovalScreen(pendingListings: []),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Ongoing Disputes',
//               value: ongoingDisputes.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         DisputeResolutionScreen(disputes: sampleDisputes),
//                   ),
//                 );
//               },
//             ),
//             DashboardCard(
//               title: 'Total Transactions',
//               value: totalTransactions.toString(),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         TransactionsScreen(transactions: sampleTransactions),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DashboardCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final VoidCallback onTap;

//   DashboardCard(
//       {required this.title, required this.value, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: ListTile(
//         title: Text(title),
//         subtitle: Text(value),
//         onTap: onTap,
//       ),
//     );
//   }
// }

// class DisputeResolutionScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> disputes;

//   DisputeResolutionScreen({required this.disputes});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ongoing Disputes'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: disputes.length,
//           itemBuilder: (context, index) {
//             final dispute = disputes[index];
//             return Card(
//               margin: EdgeInsets.symmetric(vertical: 8.0),
//               child: ListTile(
//                 title: Text('Dispute ID: ${dispute['id']}'),
//                 subtitle: Text('Customer: ${dispute['customer']}'),
//                 trailing: Text(dispute['status']),
//                 onTap: () {
//                   // Handle on tap if needed
//                   print('Tapped on dispute ${dispute['id']}');
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class TransactionsScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> transactions;

//   TransactionsScreen({required this.transactions});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Transactions'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: transactions.length,
//           itemBuilder: (context, index) {
//             final transaction = transactions[index];
//             return Card(
//               margin: EdgeInsets.symmetric(vertical: 8.0),
//               child: ListTile(
//                 title: Text('Transaction ID: ${transaction['id']}'),
//                 subtitle: Text('Amount: \$${transaction['amount']}'),
//                 trailing: Text(transaction['status']),
//                 onTap: () {
//                   // Handle on tap if needed
//                   print('Tapped on ${transaction['id']}');
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onPressed;

//   CustomButton({required this.title, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
//         decoration: BoxDecoration(
//           color: Colors.blueAccent,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Center(
//           child: Text(
//             title,
//             style: TextStyle(color: Colors.white, fontSize: 16.0),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class UserManagementScreen extends StatelessWidget {
//   final List<UserModel> users;

//   UserManagementScreen({required this.users});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('User Management')),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (context, index) {
//           return UserListTile(
//             user: users[index],
//             onDeactivate: () {
//               // Logic to deactivate user
//               print("Deactivating user: ${users[index].name}");
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class UserListTile extends StatelessWidget {
//   final UserModel user;
//   final VoidCallback onDeactivate;

//   UserListTile({required this.user, required this.onDeactivate});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8.0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 5,
//       child: ListTile(
//         title: Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text(user.email),
//         trailing: IconButton(
//           icon: Icon(user.isActive ? Icons.lock_open : Icons.lock),
//           onPressed: onDeactivate,
//         ),
//       ),
//     );
//   }
// }

// class UserModel {
//   final String id;
//   final String name;
//   final String email;
//   final bool isActive;

//   UserModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.isActive,
//   });
// }

// class ListingApprovalScreen extends StatelessWidget {
//   final List<Map<String, String>> pendingListings;

//   ListingApprovalScreen({required this.pendingListings});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Listing Approval')),
//       body: ListView.builder(
//         itemCount: pendingListings.length,
//         itemBuilder: (context, index) {
//           final listing = pendingListings[index];
//           return ListingTile(
//             title: listing['title'] ?? 'No Title',
//             description: listing['description'] ?? 'No Description',
//             onApprove: () {
//               // Approve listing logic
//               print('Approving listing: ${listing['title']}');
//             },
//             onReject: () {
//               // Reject listing logic
//               print('Rejecting listing: ${listing['title']}');
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ReviewsRatingsScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> reviews;

//   ReviewsRatingsScreen({required this.reviews});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Reviews & Ratings')),
//       body: ListView.builder(
//         itemCount: reviews.length,
//         itemBuilder: (context, index) {
//           final review = reviews[index];
//           return ListTile(
//             title: Text(review['user'] ?? 'Anonymous'),
//             subtitle: Text(review['comment'] ?? 'No Comment'),
//             trailing: Icon(
//               Icons.star,
//               color: Colors.amber,
//               size: 24.0,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class PaymentSetupScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Payment Setup')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'bKash/Nagad Number',
//                   border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               decoration: InputDecoration(
//                   labelText: 'Bank Details', border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16.0),
//             CustomButton(
//               title: 'Save Payment Details',
//               onPressed: () {
//                 // Save payment details logic
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ListingTile extends StatelessWidget {
//   final String title;
//   final String description;
//   final VoidCallback onApprove;
//   final VoidCallback onReject;

//   ListingTile({
//     required this.title,
//     required this.description,
//     required this.onApprove,
//     required this.onReject,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8.0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 5,
//       child: ListTile(
//         title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text(description),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CustomButton(
//               onPressed: onApprove,
//               title: 'Approve',
//             ),
//             SizedBox(width: 8.0),
//             CustomButton(
//               onPressed: onReject,
//               title: 'Reject',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// >>>>>>> Stashed changes
