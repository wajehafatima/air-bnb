import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestTypePlace extends StatelessWidget {
  const GuestTypePlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What type of place will guests have?',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: appColors.blacktext,
            ),
          ),
          SizedBox(height: 16.h),
          Column(
            children: const [
              GuestTypeOption(
                title: 'An entire place',
                description: 'Guests have the whole place to themselves.',
                icon: Icons.home,
              ),
              SizedBox(height: 10),
              GuestTypeOption(
                title: 'A room',
                description:
                    'Guests have their own room in a home, plus access to shared spaces.',
                icon: Icons.bedroom_child,
              ),
              SizedBox(height: 10),
              GuestTypeOption(
                title: 'A shared room in a hostel',
                description:
                    'Guests sleep in a shared room in a professionally managed hostel with staff onsite 24/7.',
                icon: Icons.meeting_room,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GuestTypeOption extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const GuestTypeOption({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showBottomSheet(context),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: appColors.blacktext,
              size: 24.sp,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: appColors.blacktext,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.9,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    'Confirm your address',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(
                    value: 'India',
                    child: Text('India'),
                  ),
                  DropdownMenuItem(
                    value: 'United States',
                    child: Text('United States'),
                  ),
                  DropdownMenuItem(
                    value: 'Canada',
                    child: Text('Canada'),
                  ),
                  DropdownMenuItem(
                    value: 'Australia',
                    child: Text('Australia'),
                  ),
                  DropdownMenuItem(
                    value: 'United Kingdom',
                    child: Text('United Kingdom'),
                  ),
                  DropdownMenuItem(
                    value: 'Germany',
                    child: Text('Germany'),
                  ),
                  DropdownMenuItem(
                    value: 'France',
                    child: Text('France'),
                  ),
                  DropdownMenuItem(
                    value: 'Japan',
                    child: Text('Japan'),
                  ),
                  DropdownMenuItem(
                    value: 'China',
                    child: Text('China'),
                  ),
                  DropdownMenuItem(
                    value: 'South Korea',
                    child: Text('South Korea'),
                  ),
                  // Add more countries as needed
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Country',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all()),
                child: Column(
                  children: [
                    _buildTextField('Street Address'),
                    SizedBox(height: 10.h),
                    _buildTextField('Apt, Floor, Building (if applicable)'),
                    SizedBox(height: 10.h),
                    _buildTextField('City'),
                    SizedBox(height: 10.h),
                    _buildTextField('State/Province'),
                    SizedBox(height: 10.h),
                    _buildTextField('Postal Code (if applicable)'),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Custombutton(
                text: 'Looks Good',
                onTap: () {
                  Navigator.pop(context);
                },
                color: appColors.secondary,
                textColor: appColors.whiteBG,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        //border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.r),
      ),
      //filled: true,
      // fillColor: Colors.grey.shade200,
      //),
    );
  }
}
