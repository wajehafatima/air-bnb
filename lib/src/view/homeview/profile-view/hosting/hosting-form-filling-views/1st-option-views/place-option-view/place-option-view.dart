import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/hosting/hosting-widgets/place-option-wdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPlace extends StatelessWidget {
  SelectPlace({super.key});
  List<String> placeOptions = [
    'House',
    'Apartment',
    'Barn',
    'Bed & Breakfast',
    'Boat',
    'Cabin',
    'Camper/RV',
    // Add more options as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Which of these best describes your place?',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: appColors.blacktext,
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: placeOptions.length,
              itemBuilder: (context, index) {
                return PlaceOptionContainer(
                  icon: Icons.home, // Example icon
                  text: placeOptions[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
