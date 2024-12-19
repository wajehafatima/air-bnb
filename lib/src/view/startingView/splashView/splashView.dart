import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/view/auth_view/signupView/signupView.dart';
import 'package:flutter/material.dart';
class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Signupview()) ,);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(appImages.splashImage),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
