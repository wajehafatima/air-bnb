import 'package:air_bnb/src/controller/components/primaryText.dart';
import 'package:air_bnb/src/controller/components/underlinedtext.dart';
import 'package:air_bnb/src/controller/constants/colors/appColors.dart';
import 'package:air_bnb/src/view/homeview/profile-view/settings-view/taxes-view/taxdocs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(height:20.h),
        Primarytext(text: 'Tax documents required for filling taxes are available to review and download here.', fontSize: 10.sp, fontWeight:FontWeight.w300,
            textColor: appColors.blacktext),
        SizedBox(height: 10.h,),
        Row(
          children: [
            Primarytext(text: 'you can also file taxes using detailed earning info, available in the',
                fontSize: 10.sp, fontWeight:FontWeight.w300, textColor: appColors.blacktext),



        UnderlinedText(text: 'earning ceremony.', onPressed: (){}),]),
        SizedBox(height: 10.h,),
        Divider(),
        SizedBox(height: 15.h,),
        TaxdocsWidget(Text1: '2024', Text2: 'No tax documnets issued', onTap: (){}),
          TaxdocsWidget(Text1: '2023', Text2: 'No tax documnets issued', onTap: (){}),
          TaxdocsWidget(Text1: '2022', Text2: 'No tax documnets issued', onTap: (){}),
          TaxdocsWidget(Text1: '2021', Text2: 'No tax documnets issued', onTap: (){}),
          TaxdocsWidget(Text1: '2020', Text2: 'No tax documnets issued', onTap: (){}),




      ],),
    );
  }
}
