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
          Text(
            'Share some basics about your place',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'You will add more details later, like bed types',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.h),

          // Guest Type Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Guest',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('guest'),
                  ),
                  // Text showing current count
                  Text(
                    '$guestCount', // Display current count
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
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
              Text(
                'Bedrooms',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('bedroom'),
                  ),
                  // Text showing current count
                  Text(
                    '$bedroomCount', // Display current count
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
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
              Text(
                'Beds',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('bed'),
                  ),
                  // Text showing current count
                  Text(
                    '$bedCount', // Display current count
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
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
              Text(
                'Bathrooms',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  // Decrement Button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrementCount('bathroom'),
                  ),
                  // Text showing current count
                  Text(
                    '$bathroomCount', // Display current count
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
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
