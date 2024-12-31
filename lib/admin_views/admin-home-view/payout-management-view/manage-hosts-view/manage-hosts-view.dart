import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
class Managehostsview extends StatefulWidget {
  const Managehostsview({super.key});

  @override
  State<Managehostsview> createState() => _ManagehostsviewState();
}

class _ManagehostsviewState extends State<Managehostsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
    );
  }
}
