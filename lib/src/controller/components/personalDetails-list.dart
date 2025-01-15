import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors/appColors.dart';

class PersonalDetails extends StatefulWidget {
  final String title;
  final String title2;
  final String buttonText;
  final VoidCallback onTap;
  final Widget? expandedContent; // Optional expanded content

  const PersonalDetails({
    Key? key,
    required this.title,
    required this.title2,
    required this.buttonText,
    required this.onTap,
    this.expandedContent, // Optional parameter
  }) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Primarytext(
              text: widget.title,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textColor: appColors.blacktext,
            ),
            TextButton(
              onPressed: () {
                _toggleExpansion();
                widget.onTap();
              },
              child: Text(
                _isExpanded ? 'Cancel' : widget.buttonText, // Toggle button text
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: appColors.blacktext,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        if (!_isExpanded) // Show title2 only when not expanded
          Primarytext(
            text: widget.title2,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            textColor: appColors.grey,
          ),
        SizedBox(height: 5.h),
        if (_isExpanded && widget.expandedContent != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.expandedContent!, // Display optional expanded content
              Divider(),
            ],
          )
        else
          Divider(),
      ],
    );
  }
}
