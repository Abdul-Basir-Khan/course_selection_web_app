import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';

class SkippedQuestionInMockUp extends StatelessWidget {
  const SkippedQuestionInMockUp({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  navigationProvider.updateIndex(12);
                },
                child: const Icon(Icons.arrow_back_ios,color: AppColors.primaryBlack,)),
            const SizedBox(width: 15,),
            Text(
                'Skipped Questions',
                style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                  fontSize: 32,)
            ),
          ],
        ),
        const SizedBox(height: 15,),
        ...List.generate(5, (index)=>    Container(
          width: MediaQuery.sizeOf(context).width*0.35,
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.only(
            top: 12,
            left: 8,
            right: 12,
            bottom: 12,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width:MediaQuery.sizeOf(context).width*0.04,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: ShapeDecoration(
                  color: const Color(0xFF00703B),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child:

                const Center
                  (
                  child: Icon(Icons.help_outline,color: AppColors.primaryWhite,),
                ),
              ),
              const SizedBox(width: 15,),
              Text(
                  'Question 2',
                  style: AppTextStyles.semiBoldStyle.copyWith( color: const Color(0xFF0B0B0B),
                    fontSize: 14,)
              ),
              const Spacer(),
              GestureDetector(
                  onTap: (){
                    navigationProvider.updateIndex(14);
                  },
                  child: const Icon(Icons.arrow_forward_ios,color: Color(0xff0B0B0B),))
            ],
          ),
        ))
      ],
    );
  }
}
