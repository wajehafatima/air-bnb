import 'package:air_bnb/src/view/auth_view/signupView/signupView.dart';
import 'package:air_bnb/src/view/homeview/explore-view/HomeView.dart';
import 'package:air_bnb/src/view/homeview/navbar-home.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/loginandsecurity-view/loginsecurity-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/payment-view/payment-view.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-info.dart';
import 'package:air_bnb/src/view/homeview/trips-view/tripsView.dart';
import 'package:air_bnb/src/view/homeview/wishlist-view/wishListView.dart';
import 'package:air_bnb/src/view/startingView/splashView/splashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          title: 'Flutter Demo',
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
          home:PaymentsView()
          //LogInSecurity()
        //PersonalInfo(),
    //Splashview()),
      ) );
  }
}
