import 'dart:js_interop';

import 'package:course_selection_web_app/dialog/all_dialogs/all_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';
import '../../../../../all_list_models/all_list_models.dart';

class AllStudyPlan extends StatefulWidget {
  const AllStudyPlan({super.key});

  @override
  State<AllStudyPlan> createState() => _AllStudyPlanState();
}

class _AllStudyPlanState extends State<AllStudyPlan> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider =
    Provider.of<TopicToStudyNavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  navigationProvider.updateIndex(18);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryBlack,
                )),
            const SizedBox(
              width: 15,
            ),
            Text('Customized Study',
              style: AppTextStyles.boldStyle.copyWith(
                color: Colors.black,
                fontSize: 32,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'CFA ESG Investings',
          style: AppTextStyles.regularStyle.copyWith( color: const Color(0xFF6D6D6D),
            fontSize: 16,)
        ),
        const SizedBox(height: 10,),
        Text(
          'Mock Exam',
          style: AppTextStyles.boldStyle.copyWith(     color: const Color(0xFF0B0B0B),
            fontSize: 20,)
        ),
        const SizedBox(height: 20,),
        ...List.generate(cutomiseAllStudyPLan.length, (index)=> Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap:(){
                index==2?showDialog(context: context, builder: (BuildContext context) { return const MockUpUnlockDialog(); }, ):null;
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      height: 48,width: 48,
                      image: AssetImage(cutomiseAllStudyPLan[index].imagePath)),
                  const SizedBox(width: 10,),
                  Text(
                  cutomiseAllStudyPLan[index].title,
                    style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
                      fontSize: 20,)
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
          ],
        ))




      ],
    );
  }
}
