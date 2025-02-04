// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../src/controller/components/primaryText.dart';
// import '../../../src/controller/constants/colors/appColors.dart';
//
// class Supporttickets extends StatefulWidget {
//   const Supporttickets({super.key});
//
//   @override
//   State<Supporttickets> createState() => _SupportticketsState();
// }
//
// class _SupportticketsState extends State<Supporttickets> {
//   // Method to launch a URL (chat, email, phone, or WhatsApp)
//   Future<void> _launchURL(String url) async {}
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: appColors.whiteBG,
//       appBar: AppBar(
//         backgroundColor: appColors.whiteBG,
//         title: Primarytext(
//           text: 'Support tickets and customer service',
//           fontSize: 20.sp,
//           fontWeight: FontWeight.w500,
//           textColor: appColors.blacktext,
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20.h),
//             Primarytext(
//               text:
//                   'Get in touch with our support team through the following options:',
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w400,
//               textColor: appColors.blacktext,
//             ),
//             SizedBox(height: 20.h),
//             // Support Options - Chat, Email, Phone, WhatsApp
//             SupportOptionButton(
//               text: 'Chat with us',
//               icon: Icons.chat_bubble,
//               onPressed: () => _launchURL('https://chat-support-url.com'),
//             ),
//             SizedBox(height: 15.h),
//             SupportOptionButton(
//               text: 'Email Support',
//               icon: Icons.email,
//               onPressed: () => _launchURL('mailto:support@example.com'),
//             ),
//             SizedBox(height: 15.h),
//             SupportOptionButton(
//               text: 'Call Us',
//               icon: Icons.phone,
//               onPressed: () => _launchURL('tel:+1234567890'),
//             ),
//             SizedBox(height: 15.h),
//             SupportOptionButton(
//               text: 'WhatsApp Support',
//               icon: Icons.watch_later_sharp,
//               onPressed: () => _launchURL('https://wa.me/1234567890'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // Custom widget for support option buttons
// class SupportOptionButton extends StatelessWidget {
//   final String text;
//   final IconData icon;
//   final VoidCallback onPressed;
//
//   const SupportOptionButton({
//     required this.text,
//     required this.icon,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         // primary: appColors.blue, // Button color
//         padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.r),
//         ),
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: appColors.whiteBG),
//           SizedBox(width: 10.w),
//           Primarytext(
//             text: text,
//             fontSize: 16.sp,
//             fontWeight: FontWeight.w500,
//             textColor: appColors.whiteBG,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../src/controller/components/primaryText.dart';
import '../../../src/controller/constants/colors/appColors.dart';

class Supporttickets extends StatefulWidget {
  const Supporttickets({super.key});

  @override
  State<Supporttickets> createState() => _SupportticketsState();
}

class _SupportticketsState extends State<Supporttickets> {
  // Method to launch a URL (chat, email, phone, or WhatsApp)
  Future<void> _launchURL(String url) async {
    // Implementation for launching URLs
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
          text: 'Support Tickets',
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          textColor: appColors.blacktext,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(
              text: 'Need help? Contact our support team:',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 20.h),
            // Support Options - Chat, Email, Phone, WhatsApp
            SupportOptionButton(
              text: 'Chat with Us',
              icon: Icons.chat_bubble,
              onPressed: () => _launchURL('https://chat-support-url.com'),
            ),
            SizedBox(height: 15.h),
            SupportOptionButton(
              text: 'Email Support',
              icon: Icons.email_outlined,
              onPressed: () => _launchURL('mailto:support@example.com'),
            ),
            SizedBox(height: 15.h),
            SupportOptionButton(
              text: 'Call Us',
              icon: Icons.phone,
              onPressed: () => _launchURL('tel:+1234567890'),
            ),
            SizedBox(height: 15.h),
            SupportOptionButton(
              text: 'WhatsApp Support',
              icon: Icons.call,
              onPressed: () => _launchURL('https://wa.me/1234567890'),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for support option buttons
class SupportOptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const SupportOptionButton({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: appColors.secondary,
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadowColor: appColors.secondary.withOpacity(0.3),
        elevation: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Icon
          Container(
            height: 36.w,
            width: 36.w,
            decoration: BoxDecoration(
              color: appColors.whiteBG.withOpacity(0.2),
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: Icon(icon, color: Colors.white, size: 20.w),
          ),
          SizedBox(width: 15.w),
          // Button Text
          Primarytext(
            text: text,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
