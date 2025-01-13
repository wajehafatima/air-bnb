import 'package:air_bnb/admin_views/admin-home-view/manageent-views/managementView.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutPlace extends StatefulWidget {
  const AboutPlace({super.key});

  @override
  _AboutPlaceState createState() => _AboutPlaceState();
}

class _AboutPlaceState extends State<AboutPlace> {
  int guestCount = 1;
  int bedroomCount = 1;
  int bedCount = 1;
  int bathroomCount = 1;

  void incrementCount(String type) {
    setState(() {
      if (type == 'guest') guestCount++;
      if (type == 'bedroom') bedroomCount++;
      if (type == 'bed') bedCount++;
      if (type == 'bathroom') bathroomCount++;
    });
  }

  void decrementCount(String type) {
    setState(() {
      if (type == 'guest' && guestCount > 1) guestCount--;
      if (type == 'bedroom' && bedroomCount > 1) bedroomCount--;
      if (type == 'bed' && bedCount > 1) bedCount--;
      if (type == 'bathroom' && bathroomCount > 1) bathroomCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Basics about the place
          Primarytext(text:
            'Share some basics about your place',

              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              textColor: Colors.black,
            ),

          SizedBox(height: 8.h),
          Primarytext(text:
            'You will add more details later, like bed types',
           fontWeight: FontWeight.w300,
              fontSize: 16.sp,
            textColor: Colors.grey,
            ),

          SizedBox(height: 16.h),

          // Guest Type Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Primarytext(text:
              'Guest',
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                textColor: Colors.grey,
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('guest'),
                  ),
                  // Text showing current count
                  Primarytext(text:
                    '$guestCount', // Display current count
                    textColor: AppColors.blackText,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),

                  // Increment Button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => incrementCount('guest'),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.h),

          // Bedrooms Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Primarytext(text:
              'Bedrooms',
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                textColor: Colors.grey,
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('bedroom'),
                  ),
                  // Text showing current count
                  Primarytext(text:
                    '$bedroomCount', // Display current count
                    textColor: AppColors.blackText,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),

                  // Increment Button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => incrementCount('bedroom'),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.h),

          // Beds Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Primarytext(text:
              'Beds',
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                textColor: Colors.grey,
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('bed'),
                  ),
                  // Text showing current count
                  Primarytext(text:
                    '$bedCount', // Display current count
                   textColor: appColors.blacktext,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),

                  // Increment Button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => incrementCount('bed'),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.h),

          // Bathrooms Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Primarytext(text:
              'Bathrooms',
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                textColor: Colors.grey,
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('bathroom'),
                  ),
                  // Text showing current count
                  Primarytext(text:
                    '$bathroomCount', // Display current count
                    textColor: appColors.blacktext,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),

                  // Increment Button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => incrementCount('bathroom'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
