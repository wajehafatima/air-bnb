import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';

import '../../../../../../controller/components/primaryText.dart';
import '../../../../../../controller/constants/colors/appColors.dart';
import 'PERSONALiNFO-WIDGETS/CustomTextFiled.dart';

class Addemergencyview extends StatefulWidget {
  const Addemergencyview({super.key});

  @override
  State<Addemergencyview> createState() => _AddemergencyviewState();
}

class _AddemergencyviewState extends State<Addemergencyview> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _relationController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  String selectedCountry = "United States";
  String selectedCode = "+1";

  void _pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true, // Include phone code in picker
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country.name;
          selectedCode = "+${country.phoneCode}";
          _countryController.text = selectedCountry;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: appColors.whiteBG,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name TextField with PrimaryText
              CustomTextFormField(
                labelText: 'Name',
                controller: _nameController,
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Enter your name for identification.',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.grey,
              ),
              SizedBox(height: 20.h),

              // Relationship TextField with PrimaryText
              CustomTextFormField(
                labelText: 'Relationship',
                controller: _relationController,
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Enter your relationship with the emergency contact.',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.grey,
              ),
              SizedBox(height: 20.h),

              // Email TextField with PrimaryText
              CustomTextFormField(
                labelText: 'Email',
                controller: _emailController,
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Enter the email for contact notifications.',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.grey,
              ),
              SizedBox(height: 20.h),

              // Country Picker with PrimaryText
              GestureDetector(
                onTap: _pickCountry,
                child: Container(
                  height: 40.h,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: appColors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Primarytext(
                            text: 'Country/Region',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                            textColor: appColors.grey,
                          ),
                          SizedBox(height: 3.h),
                          Primarytext(
                            text: '$selectedCountry ($selectedCode)',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            textColor: appColors.blacktext,
                          ),
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Select the country for emergency contact.',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.grey,
              ),
              SizedBox(height: 20.h),

              // Phone Number TextField with PrimaryText
              CustomTextFormField(
                labelText: 'Phone Number',
                controller: _phoneController,
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Enter the phone number for emergency contact.',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.grey,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
