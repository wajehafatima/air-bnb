import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../controller/components/custombutton.dart';
import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';



class Addressview extends StatefulWidget {
  const Addressview({Key? key}) : super(key: key);

  @override
  State<Addressview> createState() => _AddressviewState();
}

class _AddressviewState extends State<Addressview> {
  final TextEditingController _addressRegionController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _aptSuiteController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();

  void _pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: false, // No phone code, just country names
      onSelect: (Country country) {
        _addressRegionController.text = country.name;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address Region with Country Picker
            TextFormField(
              controller: _addressRegionController,
              readOnly: true,
              onTap: _pickCountry,
              decoration: InputDecoration(
                labelText: 'Address Region',
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  color: appColors.grey,
                ),
                border: OutlineInputBorder(),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            SizedBox(height: 10.h),

            // Street
            TextFormField(
              controller: _streetController,
              decoration: InputDecoration(
                labelText: 'Street',
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  color: appColors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.h),

            // Apt, Suite
            TextFormField(
              controller: _aptSuiteController,
              decoration: InputDecoration(
                labelText: 'Apt, Suite',
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: appColors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.h),

            // City
            TextFormField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: 'City',
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: appColors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.h),

            // State
            TextFormField(
              controller: _stateController,
              decoration: InputDecoration(
                labelText: 'State',
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: appColors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.h),

            // Zip Code
            TextFormField(
              controller: _zipCodeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Zip Code',
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  color: appColors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.h),
            Custombutton(text: 'Save', onTap: (){},width: 150.w,
              color: appColors.blacktext,textColor:appColors.whiteBG,),
            // Save Button

          ],
        ),

    );
  }
}
