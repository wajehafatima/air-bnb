// import 'package:flutter/material.dart';
// import '../../widgets/custom_card.dart';
// import '../../theme/app_theme.dart';
//
// class DashboardOverviewScreen extends StatelessWidget {
//   const DashboardOverviewScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dashboard'),
//         backgroundColor: AppTheme.backgroundColor,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Overview',
//               style: Theme.of(context).textTheme.headlineLarge,
//             ),
//             const SizedBox(height: 24),
//             GridView.count(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               crossAxisCount: 2,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//               children: [
//                 _buildStatCard(
//                   context,
//                   'Total Users',
//                   '1,234',
//                   Icons.people,
//                   AppTheme.primaryColor,
//                 ),
//                 _buildStatCard(
//                   context,
//                   'Active Listings',
//                   '567',
//                   Icons.home,
//                   AppTheme.accentColor,
//                 ),
//                 _buildStatCard(
//                   context,
//                   'Pending Reviews',
//                   '89',
//                   Icons.star,
//                   Colors.amber,
//                 ),
//                 _buildStatCard(
//                   context,
//                   'Total Revenue',
//                   '\$12,345',
//                   Icons.attach_money,
//                   Colors.green,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildStatCard(BuildContext context, String title, String value,
//       IconData icon, Color color) {
//     return CustomCard(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 32, color: color),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: Theme.of(context).textTheme.headlineLarge?.copyWith(
//                   color: color,
//                   fontSize: 24,
//                 ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             title,
//             style: Theme.of(context).textTheme.bodyMedium,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
