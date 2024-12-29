import 'package:air_bnb/src/controller/assets/appImages/appImages.dart';
import 'package:air_bnb/src/controller/components/custombutton.dart';
import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/underlinedtext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/view-profile-view/editProfileView/edit-profile-widget/edit-profilewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editprofileview extends StatefulWidget {
  const Editprofileview({super.key});

  @override
  State<Editprofileview> createState() => _EditprofileviewState();
}

class _EditprofileviewState extends State<Editprofileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.whiteBG,
      appBar: AppBar(
        backgroundColor: appColors.whiteBG,
        title: Primarytext(
          text: 'Edit profile',
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          textColor: appColors.blacktext,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel_outlined),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
                    Stack(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 70.r,
                            backgroundImage: AssetImage(appImages.dp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110),
                          child: Container(
                            width: 45.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              color: appColors.whiteBG,
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: const [BoxShadow(blurRadius: 2)],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt,
                                    size: 12.sp, color: appColors.blacktext),
                                SizedBox(width: 2.w),
                                Primarytext(
                                  text: 'Add',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  textColor: appColors.blacktext,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Primarytext(
                      text: 'Your profile',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.blacktext,
                    ),
                    SizedBox(height: 5.h),
                    Primarytext(
                      text:
                      'The information you share will be used across Xobnb to help other guests and hosts get to know you.',
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      textColor: appColors.blacktext,
                    ),
                    SizedBox(height: 20.h),
                    EditProfileRow(
                      icon: Icons.work_outline_rounded,
                      text: 'My work',
                      onTap: () => _showMyWorkBottomSheet(context),
                    ),
                    EditProfileRow(
                      icon: Icons.public_rounded,
                      text: 'Where I\'ve always wanted to go',
                      onTap: () => _showWhereWantedToGoBottomSheet(context),
                    ),
                    EditProfileRow(
                      icon: Icons.handyman_rounded,
                      text: 'My most useless skills',
                      onTap: () => _showMostUselessSkillsBottomSheet(context),
                    ),
                    EditProfileRow(
                      icon: Icons.lightbulb_outline,
                      text: 'My fun fact',
                      onTap: () {
                        _showMyFunFactBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.pets_outlined,
                      text: 'Pets',
                      onTap: () {
                        // Show the BottomSheet when tapping the "Pets" row
                        _showPetsBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.youtube_searched_for_sharp,
                      text: 'Decade I was born in',
                      onTap: () {
                        // Show the BottomSheet when tapping the "Decade I was born in" row
                        _showBornDecadeBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.school,
                      text: 'Where I went to school',
                      onTap: () {
                        // Show the BottomSheet when tapping the "Where I went to school" row
                        _showWhereWantedToGoBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.music_note_outlined,
                      text: 'My favourite song in high school',
                      onTap: () {
                        // Show the BottomSheet when tapping the "My favourite song in high school" row
                        _showFavoriteSongBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.access_time,
                      text: 'I spend too much time',
                      onTap: () {
                        // Show the BottomSheet when tapping the "I spend too much time" row
                        _showTimeSpentBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.favorite_border,
                      text: 'I\'m obsessed with',
                      onTap: () {
                        // Show the BottomSheet when tapping the "I'm obsessed with" row
                        _showObsessedWithBottomSheet(context);
                      },
                    ),
                    EditProfileRow(
                      icon: Icons.menu_book_sharp,
                      text: 'My biography title would be',
                      onTap: () {
                        // Show the BottomSheet when tapping the "My biography title would be" row
                        _showBiographyTitleBottomSheet(context);
                      },
                    ),
                    EditProfileRow(icon: Icons.language, text: 'Languages I speak', onTap: (){}),
                    EditProfileRow(icon: Icons.public_rounded, text:'Where I live', onTap: (){}),
                    // Additional Rows...
                    SizedBox(height: 20.h),
                    Primarytext(
                      text: 'About you',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.blacktext,
                    ),
                    SizedBox(height: 10.h),
                    _buildTextInputBox(
                      hintText: 'Write something fun and punchy',
                      buttonText: 'Add intro',
                    ),
                    SizedBox(height: 20.h),
                    Primarytext(
                      text: 'What you\'re into',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      textColor: appColors.blacktext,
                    ),
                    SizedBox(height: 5.h),
                    Primarytext(
                      text:
                      'Find common ground with other guests and hosts by adding interests to your profile.',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                      textColor: appColors.blacktext,
                    ),
                    SizedBox(height: 10.h),
                    _buildAddButton(),
                  ],
                ),
              ),
            ),
          ),
          Custombutton(
            text: 'Done',
            onTap: () {},
            textColor: appColors.whiteBG,
            color: appColors.blacktext,
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputBox({required String hintText, required String buttonText}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        border: Border.all(color: appColors.blacktext),
        borderRadius: BorderRadius.circular(15),
        color: appColors.whiteBG,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Primarytext(
            text: hintText,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            textColor: appColors.blacktext,
          ),
          SizedBox(height: 5.h),
          UnderlinedText(text: buttonText, onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return Container(
      height: 30.h,
      width: 80.h,
      decoration: BoxDecoration(
        border: Border.all(color: appColors.blacktext),
        borderRadius: BorderRadius.circular(10),
        color: appColors.whiteBG,
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, size: 18.sp),
        ),
      ),
    );
  }
  void _showMyWorkBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: appColors.whiteBG,
      // Set the background color
      isScrollControlled: true,
      // Allow the bottom sheet to adjust its height
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (context) {
        return Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 20.h,
              bottom: MediaQuery
                  .of(context)
                  .viewInsets
                  .bottom, // Adjust for keyboard
            ),
            child: SingleChildScrollView( // Makes the bottom sheet scrollable
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
                  ),
                  SizedBox(height: 10.h),
                  Primarytext(
                    text: 'what do you do for work?',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    textColor: appColors.blacktext,
                  ),
                  SizedBox(height: 5.h),
                  Primarytext(
                    text: 'Tell us what your Profession is.If you don\'t have a traditional job, tell us your life\'s calling.',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                    textColor: appColors.blacktext,
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'My Work',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: appColors.blacktext),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appColors.blacktext),
                          borderRadius: BorderRadius.circular(10.r),
                        )

                    ),
                  ),
                  SizedBox(height: 20.h),
                  Divider(),
                  Custombutton(
                    text: 'Save',
                    onTap: () {

                      Navigator.pop(context);
                    },
                    textColor: appColors.whiteBG,
                    color: appColors.blacktext,
                  ),
                ],
              ),
            )
        );
      },
    );

  }
  void _showWhereWantedToGoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: appColors.whiteBG,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 20.h,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
                ),
                SizedBox(height: 10.h),
                Primarytext(
                  text: 'Where I\'ve always wanted to go',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 5.h),
                Primarytext(
                  text: 'Share a dream destination you\'ve always wanted to visit. It could inspire others!',
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w300,
                  textColor: appColors.blacktext,
                ),
                SizedBox(height: 20.h),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Dream Destination',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: appColors.blacktext),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appColors.blacktext),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Divider(),
                Custombutton(
                  text: 'Save',
                  onTap: () {
                    Navigator.pop(context);
                  },
                  textColor: appColors.whiteBG,
                  color: appColors.blacktext,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}
void _showMostUselessSkillsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'My Most Useless Skills',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text:
                'Share a fun or quirky skill you have! This will appear on your profile.',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter your most useless skill...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  // Logic to save input
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showMyFunFactBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Share a fun fact about yourself',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Tell us something quirky, unique, or just plain funny about you!',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'My Fun Fact',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showPetsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Edit Pets',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Tell us more about your pets!',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Pet Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showBornDecadeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Your birthday year is not visible to anyone.',
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              Primarytext(
                text: 'Decade I was born in',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Primarytext(
                        text: 'Born in the 90s',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        textColor: appColors.blacktext,
                      ),
                    ],
                  ),
                  Switch(
                    value: true, // Toggle value (set based on your logic)
                    onChanged: (bool value) {
                      // Handle switch change
                    },
                    activeColor: appColors.blacktext, // Custom active color for the switch
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Divider(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Save'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: appColors.whiteBG,
                  backgroundColor: appColors.blacktext,
                  minimumSize: Size(double.infinity, 50.h),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showWhereWantedToGoBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'Where I\'ve always wanted to go',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Share a dream destination you\'ve always wanted to visit. It could inspire others!',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Dream Destination',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showFavoriteSongBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'My favourite song in high school',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Share the song that defined your high school days!',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Favourite Song',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showTimeSpentBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'I spend too much time...',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Share the activity you feel you spend too much time on.',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Activity I spend too much time on',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showObsessedWithBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'I\'m obsessed with',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Share the things or activities you are obsessed with!',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'What am I obsessed with?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),

      );
    },


  );

}
void _showBiographyTitleBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: appColors.whiteBG, // Using your appColors
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined, color: appColors.blacktext),
              ),
              SizedBox(height: 10.h),
              Primarytext(
                text: 'My biography title would be',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 5.h),
              Primarytext(
                text: 'Share the title you think would suit your biography!',
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                textColor: appColors.blacktext,
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Biography Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: appColors.blacktext),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blacktext),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(),
              Custombutton(
                text: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                textColor: appColors.whiteBG,
                color: appColors.blacktext,
              ),
            ],
          ),
        ),
      );
    },
  );
}