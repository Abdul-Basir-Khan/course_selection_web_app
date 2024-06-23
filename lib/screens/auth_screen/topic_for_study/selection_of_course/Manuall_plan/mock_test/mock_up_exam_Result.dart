import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';


class MockUpExamResult extends StatefulWidget {
  const MockUpExamResult({super.key});

  @override
  State<MockUpExamResult> createState() => _MockUpExamResultState();
}

class _MockUpExamResultState extends State<MockUpExamResult> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);
    return  SizedBox(
      width: MediaQuery.sizeOf(context).width*0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: (){
                    navigationProvider.updateIndex(13);
                  },
                  child:  CircleAvatar(
                    radius: 12,backgroundColor: AppColors.redEmergencyColor,
                    child: Icon(Icons.close,color: AppColors.primaryWhite,size: 20,),
                  ),),
              const SizedBox(width: 15,),
              Text(
                  'Mock Exam A Result',
                  style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                    fontSize: 32,)
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Container(
      height: 56,
      decoration: ShapeDecoration(
      color: Color(0xFFECF9F3),
      shape: RoundedRectangleBorder(
      side: BorderSide(width: 1, color: Color(0xFF6D6D6D)),
      borderRadius: BorderRadius.circular(4),
      ),
      ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Score',
                  style: AppTextStyles.mediumStyle.copyWith(  color: Colors.black,
                    fontSize: 14,)
                ),
                Spacer(),
                Text(
                  '39.0%',
                  style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF1EBE41),
                    fontSize: 14,)
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 56,
            decoration: ShapeDecoration(
              color: Color(0xFFECF9F3),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF6D6D6D)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'Total Time',
                    style: AppTextStyles.mediumStyle.copyWith(  color: Colors.black,
                      fontSize: 14,)
                ),
                Spacer(),
                Text(
                    '02:19',
                    style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF1EBE41),
                      fontSize: 14,)
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 56,
            decoration: ShapeDecoration(
              color: Color(0xFFECF9F3),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF6D6D6D)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'Average Time Per Question',
                    style: AppTextStyles.mediumStyle.copyWith(  color: Colors.black,
                      fontSize: 14,)
                ),
                Spacer(),
                Text(
                    '1.39 s',
                    style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF1EBE41),
                      fontSize: 14,)
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            height: 436,
            padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 42),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFF00703B)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text(
                  '1. What is a key trend in the workforce related to education over the past few decades?',
                  style:AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                    fontSize: 20,),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'A. ',
                        style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                          fontSize: 14,)
                      ),
                      TextSpan(
                        text: 'A decrease in the percentage of employees with higher education degrees.',
                        style:AppTextStyles.regularStyle.copyWith(      color: Colors.black,
                          fontSize: 14,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'B. ',
                          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                            fontSize: 14,)
                      ),
                      TextSpan(
                          text: 'A decrease in the percentage of employees with higher education degrees.',
                          style:AppTextStyles.regularStyle.copyWith(      color: Color(0xFF3D8BCC),
                            fontSize: 14,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'C. ',
                          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                            fontSize: 14,)
                      ),
                      TextSpan(
                          text: 'A decrease in the percentage of employees with higher education degrees.',
                          style:AppTextStyles.regularStyle.copyWith(      color: Color(0xFF3D8BCC),
                            fontSize: 14,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Correct Answer :',
                        style: AppTextStyles.mediumStyle.copyWith(    color: Color(0xFF373737),
                          fontSize: 24,)
                      ),
                      TextSpan(
                        text: '  A decrease in the percentage of employees with higher education degrees.',
                        style: AppTextStyles.regularStyle.copyWith(  color: Color(0xFF00703B),
                          fontSize: 24,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Explanation',
                        style:AppTextStyles.mediumStyle.copyWith(   color: Color(0xFF373737),
                          fontSize: 24,)
                      ),
                      TextSpan(
                        text: ': ',
                        style:AppTextStyles.mediumStyle.copyWith( color: Color(0xFF373737),
                          fontSize: 32,)
                      ),
                      TextSpan(
                        text: 'ESG integration considers the changing significance of ESG factors over time and is therefore related to dynamic materiality. Both ESG integration and dynamic materiality take unto account the changing importance and impact of ESG factors. ',
                        style: AppTextStyles.mediumStyle.copyWith(  color: Color(0xFF373737),
                          fontSize: 18,)
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
          SizedBox(height: 20,),
          Container(
            height: 436,
            padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 42),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFFFF3636)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text(
                  '1. What is a key trend in the workforce related to education over the past few decades?',
                  style:AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                    fontSize: 20,),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'A. ',
                          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                            fontSize: 14,)
                      ),
                      TextSpan(
                          text: 'A decrease in the percentage of employees with higher education degrees.',
                          style:AppTextStyles.regularStyle.copyWith(      color: Colors.black,
                            fontSize: 14,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'B. ',
                          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                            fontSize: 14,)
                      ),
                      TextSpan(
                          text: 'A decrease in the percentage of employees with higher education degrees.',
                          style:AppTextStyles.regularStyle.copyWith(      color: Color(0xFF3D8BCC),
                            fontSize: 14,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'C. ',
                          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                            fontSize: 14,)
                      ),
                      TextSpan(
                          text: 'A decrease in the percentage of employees with higher education degrees.',
                          style:AppTextStyles.regularStyle.copyWith(      color: Color(0xFF3D8BCC),
                            fontSize: 14,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Correct Answer :',
                          style: AppTextStyles.mediumStyle.copyWith(    color: Color(0xFF373737),
                            fontSize: 24,)
                      ),
                      TextSpan(
                          text: '  A decrease in the percentage of employees with higher education degrees.',
                          style: AppTextStyles.regularStyle.copyWith(  color: Color(0xFF00703B),
                            fontSize: 24,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Explanation',
                          style:AppTextStyles.mediumStyle.copyWith(   color: Color(0xFF373737),
                            fontSize: 24,)
                      ),
                      TextSpan(
                          text: ': ',
                          style:AppTextStyles.mediumStyle.copyWith( color: Color(0xFF373737),
                            fontSize: 32,)
                      ),
                      TextSpan(
                          text: 'ESG integration considers the changing significance of ESG factors over time and is therefore related to dynamic materiality. Both ESG integration and dynamic materiality take unto account the changing importance and impact of ESG factors. ',
                          style: AppTextStyles.mediumStyle.copyWith(  color: Color(0xFF373737),
                            fontSize: 18,)
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),


        ],
      ),
    );
  }
}
