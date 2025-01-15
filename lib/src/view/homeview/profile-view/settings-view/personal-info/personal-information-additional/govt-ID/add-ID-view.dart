import 'package:air_bnb/src/controller/assets/appIcons/appIcons.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/personal-info/personal-information-additional/PERSONALiNFO-WIDGETS/govt-id-row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';

import '../../../../../../../controller/constants/colors/appColors.dart';

class Addidview extends StatefulWidget {
  const Addidview({super.key});

  @override
  State<Addidview> createState() => _AddidviewState();
}

class _AddidviewState extends State<Addidview> {
  final TextEditingController _issuingCountryController = TextEditingController();
  String selectedCountry = "United States";

  void _pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: false, // No phone code, just country names
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country.name;
          _issuingCountryController.text = selectedCountry;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: appColors.whiteBG,
      ),
      body: Padding(
        padding: EdgeInsets.only(left:
        20,right: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Primarytext(
              text: 'Choose an ID type',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.blacktext,
            ),
            SizedBox(height: 15.h),

            // Issuing Country/Region with Country Picker
            TextFormField(
              controller: _issuingCountryController,
              readOnly: true,
              onTap: _pickCountry,
              decoration: InputDecoration(
                labelText: 'Issuing Country/Region',
                labelStyle: TextStyle(fontSize: 12.sp),
                border: OutlineInputBorder(),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            SizedBox(height: 10.h),
            Primarytext(
              text: 'Select the country that issued the ID.',
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
              textColor: appColors.grey,
            ),
            SizedBox(height: 20.h),
            GovtIdrow( icon: appIcons.car,text: 'Driver\'s  license',onTap: (){},),
            SizedBox(height: 10.h,),
            GovtIdrow( icon: appIcons.passport,text: 'Passport',onTap: (){}),
            SizedBox(height: 10.h,),
            GovtIdrow( icon: appIcons.ID,text: 'Identity card',onTap: (){}),
            SizedBox(height: 60.h,),
            Custombutton(text: 'Continue', onTap: (){},color: appColors.blacktext,)

          ],
        ),
      ),
    );
  }
}
