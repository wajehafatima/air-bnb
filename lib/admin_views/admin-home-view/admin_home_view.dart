// ///-------------------------------
// import 'package:flutter/material.dart';

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
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the Dashboard Overview after login
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DashboardOverviewScreen(
//                       totalUsers: 100, // Example data
//                       totalListings: 50,
//                       pendingApprovals: 5,
//                       ongoingDisputes: 2,
//                       totalTransactions: 200,
//                     ),
//                   ),
//                 );
//               },
//               child: Text('Login'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DashboardOverviewScreen extends StatelessWidget {
//   final int totalUsers;
//   final int totalListings;
//   final int pendingApprovals;
//   final int ongoingDisputes;
//   final int totalTransactions;

//   DashboardOverviewScreen({
//     required this.totalUsers,
//     required this.totalListings,
//     required this.pendingApprovals,
//     required this.ongoingDisputes,
//     required this.totalTransactions,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Dashboard Overview')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             DashboardCard(title: 'Total Users', value: totalUsers.toString()),
//             DashboardCard(
//                 title: 'Total Listings', value: totalListings.toString()),
//             DashboardCard(
//                 title: 'Pending Approvals', value: pendingApprovals.toString()),
//             DashboardCard(
//                 title: 'Ongoing Disputes', value: ongoingDisputes.toString()),
//             DashboardCard(
//                 title: 'Total Transactions',
//                 value: totalTransactions.toString()),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to User Management screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         UserManagementScreen(users: []), // Pass your data here
//                   ),
//                 );
//               },
//               child: Text('Go to User Management'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to Listing Approval screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ListingApprovalScreen(
//                         pendingListings: []), // Pass your data here
//                   ),
//                 );
//               },
//               child: Text('Go to Listing Approval'),
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

//   DashboardCard({required this.title, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(title),
//         trailing: Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
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
//             },
//             onReject: () {
//               // Reject listing logic
//             },
//           );
//         },
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
//       child: ListTile(
//         title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text(description),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton(
//               onPressed: onApprove,
//               child: Text('Approve'),
//             ),
//             SizedBox(width: 8.0),
//             ElevatedButton(
//               onPressed: onReject,
//               child: Text('Reject'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// Main entry point for the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AdminLoginScreen(),
    );
  }
}

class AdminLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            CustomButton(
              onPressed: () {
                // Navigate to the Dashboard Overview after login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardOverviewScreen(
                        // totalUsers: 100,
                        // totalListings: 50,
                        // pendingApprovals: 5,
                        // ongoingDisputes: 2,
                        // totalTransactions: 200,
                        ),
                  ),
                );
              },
              title: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}

// dashboard_overview_screen.dart

class DashboardOverviewScreen extends StatelessWidget {
  final int totalUsers = 50;
  final int totalListings = 30;
  final int pendingApprovals = 5;
  final int ongoingDisputes = 2;
  final int totalTransactions = 100;
  List<Map<String, dynamic>> sampleDisputes = [
    {
      'id': 'D12345',
      'customer': 'John Doe',
      'status': 'Under Review',
    },
    {
      'id': 'D12346',
      'customer': 'Jane Smith',
      'status': 'Resolved',
    },
    {
      'id': 'D12347',
      'customer': 'Robert Brown',
      'status': 'Pending',
    },
    {
      'id': 'D12348',
      'customer': 'Emily Davis',
      'status': 'Escalated',
    },
  ];
  final List<UserModel> users = [
    UserModel(
        id: '1',
        name: 'John Doe',
        email: 'johndoe@example.com',
        isActive: true),
    UserModel(
        id: '2',
        name: 'Jane Smith',
        email: 'janesmith@example.com',
        isActive: false),
    UserModel(
        id: '3',
        name: 'Robert Brown',
        email: 'robertbrown@example.com',
        isActive: true),
    // Add more users here
  ];
  List<Map<String, dynamic>> sampleTransactions = [
    {
      'id': 'T12345',
      'amount': 250.00,
      'status': 'Completed',
    },
    {
      'id': 'T12346',
      'amount': 100.00,
      'status': 'Pending',
    },
    {
      'id': 'T12347',
      'amount': 500.00,
      'status': 'Failed',
    },
    {
      'id': 'T12348',
      'amount': 150.00,
      'status': 'Completed',
    },
  ];
  final List<Map<String, String>> pendingListings = [
    {'title': 'Listing 1', 'description': 'Description for listing 1'},
    {'title': 'Listing 2', 'description': 'Description for listing 2'},
    {'title': 'Listing 3', 'description': 'Description for listing 3'},
    // Add more listings here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Overview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DashboardCard(
              title: 'Total Users',
              value: totalUsers.toString(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserManagementScreen(users: users),
                  ),
                );
              },
            ),
            DashboardCard(
              title: 'Total Listings',
              value: totalListings.toString(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ListingApprovalScreen(pendingListings: pendingListings),
                  ),
                );
              },
            ),
            DashboardCard(
              title: 'Pending Approvals',
              value: pendingApprovals.toString(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ListingApprovalScreen(pendingListings: []),
                  ),
                );
              },
            ),
            DashboardCard(
              title: 'Ongoing Disputes',
              value: ongoingDisputes.toString(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DisputeResolutionScreen(disputes: sampleDisputes),
                  ),
                );
              },
            ),
            DashboardCard(
              title: 'Total Transactions',
              value: totalTransactions.toString(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TransactionsScreen(transactions: sampleTransactions),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onTap;

  DashboardCard(
      {required this.title, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(value),
        onTap: onTap,
      ),
    );
  }
}

class DisputeResolutionScreen extends StatelessWidget {
  final List<Map<String, dynamic>> disputes;

  DisputeResolutionScreen({required this.disputes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ongoing Disputes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: disputes.length,
          itemBuilder: (context, index) {
            final dispute = disputes[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Dispute ID: ${dispute['id']}'),
                subtitle: Text('Customer: ${dispute['customer']}'),
                trailing: Text(dispute['status']),
                onTap: () {
                  // Handle on tap if needed
                  print('Tapped on dispute ${dispute['id']}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class TransactionsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  TransactionsScreen({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Transaction ID: ${transaction['id']}'),
                subtitle: Text('Amount: \$${transaction['amount']}'),
                trailing: Text(transaction['status']),
                onTap: () {
                  // Handle on tap if needed
                  print('Tapped on ${transaction['id']}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// custom_button.dart

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  CustomButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}

// user_management_screen.dart

class UserManagementScreen extends StatelessWidget {
  final List<UserModel> users;

  UserManagementScreen({required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Management')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserListTile(
            user: users[index],
            onDeactivate: () {
              // Logic to deactivate user
              print("Deactivating user: ${users[index].name}");
            },
          );
        },
      ),
    );
  }
}

class UserListTile extends StatelessWidget {
  final UserModel user;
  final VoidCallback onDeactivate;

  UserListTile({required this.user, required this.onDeactivate});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: ListTile(
        title: Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(user.email),
        trailing: IconButton(
          icon: Icon(user.isActive ? Icons.lock_open : Icons.lock),
          onPressed: onDeactivate,
        ),
      ),
    );
  }
}

class UserModel {
  final String id;
  final String name;
  final String email;
  final bool isActive;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.isActive,
  });
}

// listing_approval_screen.dart

class ListingApprovalScreen extends StatelessWidget {
  final List<Map<String, String>> pendingListings;

  ListingApprovalScreen({required this.pendingListings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listing Approval')),
      body: ListView.builder(
        itemCount: pendingListings.length,
        itemBuilder: (context, index) {
          final listing = pendingListings[index];
          return ListingTile(
            title: listing['title'] ?? 'No Title',
            description: listing['description'] ?? 'No Description',
            onApprove: () {
              // Approve listing logic
              print('Approving listing: ${listing['title']}');
            },
            onReject: () {
              // Reject listing logic
              print('Rejecting listing: ${listing['title']}');
            },
          );
        },
      ),
    );
  }
}

class ReviewsRatingsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> reviews;

  ReviewsRatingsScreen({required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reviews & Ratings')),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ListTile(
            title: Text(review['user'] ?? 'Anonymous'),
            subtitle: Text(review['comment'] ?? 'No Comment'),
            trailing: Icon(
              Icons.star,
              color: Colors.amber,
              size: 24.0,
            ),
          );
        },
      ),
    );
  }
}

class PaymentSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment Setup')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'bKash/Nagad Number',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Bank Details', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16.0),
            CustomButton(
              title: 'Save Payment Details',
              onPressed: () {
                // Save payment details logic
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListingTile extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onApprove;
  final VoidCallback onReject;

  ListingTile({
    required this.title,
    required this.description,
    required this.onApprove,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              onPressed: onApprove,
              title: 'Approve',
            ),
            SizedBox(width: 8.0),
            CustomButton(
              onPressed: onReject,
              title: 'Reject',
            ),
          ],
        ),
      ),
    );
  }
}
