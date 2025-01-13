import 'package:air_bnb/admin_views/admin-home-view/admin_home_view.dart';
import 'package:air_bnb/admin_views/admin-home-view/booking-management-view/booking-management-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/listing-management-view/listing-view.dart';
import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
import 'package:air_bnb/src/view/auth_view/signupView/signupView.dart';
import 'package:air_bnb/src/view/homeview/explore-view/HomeView.dart';
import 'package:air_bnb/src/view/homeview/navbar-home.dart';
import 'package:air_bnb/src/view/homeview/profile-view/legal-view/source-license-view/licens-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/legal-view/terms-view/terms-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/accessbility-view/accessbility-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/loginsecurity-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/notification-view/notification-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/payment-view/payment-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-info.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/privacyAndSharingView/Privacy-sharing-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/tax-views/document-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/taxes-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/translation-view/translation-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/travelForWork/travel-for-work.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/airbnb-works-view/airbnb-works-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/feed-back-view/feedback-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/support-view/get-help-security-view/gethelp-security-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/view-profile-view/editProfileView/EditProfileView.dart';
import 'package:air_bnb/src/view/homeview/profile-view/view-profile-view/viewProfileView.dart';
import 'package:air_bnb/src/view/homeview/trips-view/tripsView.dart';
import 'package:air_bnb/src/view/homeview/wishlist-view/wishListView.dart';
import 'package:air_bnb/src/view/startingView/splashView/splashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/view/homeview/profile-view/hosting/hosting-agriment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 640),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
            title: 'Roomeroo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // TRY THIS: Try running your application with "flutter run". You'll see
              // the application has a purple toolbar. Then, without quitting the app,
              // try changing the seedColor in the colorScheme below to Colors.green
              // and then invoke "hot reload" (save your changes or press the "hot
              // reload" button in a Flutter-supported IDE, or press "r" if you used
              // the command line to start the app).
              //
              // Notice that the counter didn't reset back to zero; the application
              // state is not lost during the reload. To reset the state, use hot
              // restart instead.
              //
              // This works for code too, not just values: Most code changes can be
              // tested with just a hot reload.
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),

            //Editprofileview()
            home: AdminHomeView())
            //Editprofileview()

            //Licensview()
            //Viewprofileview()
            //Travelforwork()
            //Privacysharingview()
            //Accessbility()
            //NotificationView(),
            // MainHomeView()
            //TaxesView()
            //TranslationView()
            //PaymentsView()
            //LogInSecurity()
            //PersonalInfo(),
            // HostingAgreementScreen()
             // Splashview()),
            // Homeview()
//Feedbackview()
            //  Airbnbworksview()
            //Gethelpsecurityview()
            ); //));
  }
}
