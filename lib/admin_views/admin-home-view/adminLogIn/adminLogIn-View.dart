import 'package:flutter/material.dart';

import '../admin_home_view.dart';
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
