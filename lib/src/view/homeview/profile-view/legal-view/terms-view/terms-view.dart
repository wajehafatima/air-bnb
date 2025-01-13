import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Termsview extends StatefulWidget {
  const Termsview({super.key});

  @override
  State<Termsview> createState() => _TermsviewState();
}

class _TermsviewState extends State<Termsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(backgroundColor: appColors.whiteBG,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back),

        ),
        title: Primarytext(text: 'Terms of service', fontSize: 25.sp,
            fontWeight: FontWeight.w500,
            textColor:appColors.blacktext),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [ RichText(
          text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black),
          children: [
            TextSpan(
              text: 'Roomoree Terms of Service\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '1. User Eligibility\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'You must be at least 18 years old to use the platform. Certain countries may have additional age requirements.\n\n',
            ),
            TextSpan(
              text: '2. Account Responsibilities\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Users must provide accurate information and maintain the confidentiality of their account details. Roomore may suspend or terminate accounts for violations.\n\n',
            ),
            TextSpan(
              text: '3. Booking and Payment\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Payments are made through Roomoree’s secure system. Cancellation policies vary based on the listing and are governed by the host’s terms.\n\n',
            ),
            TextSpan(
              text: '4. Host and Guest Responsibilities\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Hosts must provide accurate descriptions of their properties. Guests must respect the property, follow house rules, and not cause damage.\n\n',
            ),
            TextSpan(
              text: '5. Liability and Insurance\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Roomoree offers programs like Host Guarantee and Host Protection Insurance, but these have limitations. Users are responsible for their own safety and insurance.\n\n',
            ),
            TextSpan(
              text: '6. Dispute Resolution\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Disputes are typically resolved through arbitration rather than lawsuits. Users must follow Roomoree dispute resolution process.\n\n',
            ),
            TextSpan(
              text: '7. Prohibited Activities\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Misrepresentation, fraud, discrimination, and illegal activities are strictly prohibited. Roomoree can remove listings or terminate accounts for violations.\n\n',
            ),
            TextSpan(
              text: '8. Content and Intellectual Property\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Users grant Roomoree the right to use content they upload, such as photos and reviews. Roomoree retains ownership of its branding and intellectual property.\n\n',
            ),
            TextSpan(
              text: '9. Privacy\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Roomoree collects and uses personal data as described in its Privacy Policy. Users must consent to Roomoree’s use of cookies and tracking technologies.\n\n',
            ),
            TextSpan(
              text: '10. Changes to Terms\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
              'Roomoree can update the Terms of Service at any time, and continued use of the platform implies acceptance of the updated terms.\n\n',
            ),
            TextSpan(
              text:
              'For full details, please refer to the official Terms of Service on Roomoree’s website.',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        
          )]
          ),
        ),
      )
    );

  }
}
