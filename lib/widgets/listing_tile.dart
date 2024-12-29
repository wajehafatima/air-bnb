// import 'package:flutter/material.dart';
// import '../theme/app_theme.dart';
//
// class ListingTile extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String location;
//   final double price;
//   final double rating;
//   final VoidCallback onTap;
//
//   const ListingTile({
//     Key? key,
//     required this.imageUrl,
//     required this.title,
//     required this.location,
//     required this.price,
//     required this.rating,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.network(
//                 imageUrl,
//                 height: 200,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   title,
//                   style: Theme.of(context).textTheme.titleLarge,
//                 ),
//                 Row(
//                   children: [
//                     const Icon(Icons.star,
//                         color: AppTheme.primaryColor, size: 16),
//                     Text(
//                       rating.toString(),
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Text(
//               location,
//               style: Theme.of(context).textTheme.bodyMedium,
//             ),
//             const SizedBox(height: 4),
//             Text(
//               '\$${price.toStringAsFixed(0)} / night',
//               style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                     color: AppTheme.primaryColor,
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
