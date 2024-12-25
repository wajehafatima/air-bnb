import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedScreenExample extends StatefulWidget {
  const ExpandedScreenExample({super.key});

  @override
  State<ExpandedScreenExample> createState() => _ExpandedScreenExampleState();
}

class _ExpandedScreenExampleState extends State<ExpandedScreenExample> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: appColors.blacktext),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 15,
            child: Center(
              child: Text(
                'Header Section',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: appColors.blacktext,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 70,
            child: IndexedStack(
              index: currentIndex,
              children: [
                Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Content 1',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Content 2',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Content 3',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors.blacktext,
                      foregroundColor: appColors.whiteBG,
                    ),
                    child: Text('Content 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors.blacktext,
                      foregroundColor: appColors.whiteBG,
                    ),
                    child: Text('Content 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors.blacktext,
                      foregroundColor: appColors.whiteBG,
                    ),
                    child: Text('Content 3'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
