import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({super.key});

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: appColors.whiteBG,
          border: Border.all()),
      child: ListTile(
        title: Primarytext(
          text: 'Display total price',
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        subtitle: Primarytext(
          text: 'Includes all fees,before taxes',
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.grey,
        ),
        trailing: Switch(
          value: isSwitchOn,
          onChanged: (value) {
            setState(() {
              isSwitchOn = value; // Update switch state
            });
          },
          activeColor: appColors.blacktext, // Customize active switch color
          inactiveThumbColor: appColors.grey, // Customize inactive thumb color
        ),
      ),
    );
    ;
  }
}
