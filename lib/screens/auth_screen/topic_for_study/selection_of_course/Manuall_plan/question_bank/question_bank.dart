import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';

class QuestionBank extends StatefulWidget {
  const QuestionBank({super.key});

  @override
  State<QuestionBank> createState() => _QuestionBankState();
}

class _QuestionBankState extends State<QuestionBank> {
  bool isPress=false;
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  navigationProvider.updateIndex(4);
                },
                child: const Icon(Icons.arrow_back_ios,color: AppColors.primaryBlack,)),
            const SizedBox(width: 15,),
            Text(
                'Practice Exam',
                style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                  fontSize: 32,)
            ),
          ],
        ),
        const SizedBox(height: 15,),
       Row(

        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const CircleAvatar(
             radius: 12,backgroundColor: AppColors.redEmergencyColor,
             child: Icon(Icons.close,color: AppColors.primaryWhite,size: 20,),
           ),
           Container(
             padding: const EdgeInsets.all(4),
             decoration: ShapeDecoration(
               color: const Color(0xFFDCEDFB),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
             ),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                const Icon(Icons.timer_outlined,color: Color(0xff0C4370),),
                 const SizedBox(width: 7),
                 Text(
                   '00:00:19',
                   textAlign: TextAlign.center,
                   style: AppTextStyles.semiBoldStyle.copyWith(color: const Color(0xFF0C4370),
                     fontSize: 14,)
                 ),
               ],
             ),
           )
         ],
       ),
        const SizedBox(height: 15,),
        LinearProgressBar(
          maxSteps: 50,
          progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
          currentStep: 5,
          progressColor:AppColors.primaryColor,
          backgroundColor:const Color(0xFFFAFAFA),
        ),
        const SizedBox(height: 15,),
        Text(
          'Question 5/50',
          style: AppTextStyles.mediumStyle.copyWith(     color: Colors.black,
            fontSize: 32,)
        ),
        const SizedBox(height: 20,),
        Text(
          'What is the relationship between ESG integration and dynamic materiality?',
          style:AppTextStyles.boldStyle.copyWith(  color: Colors.black,
            fontSize: 30,)
        ),
        const SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    const BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 0,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFAFAFA),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'A',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                            fontSize: 16,)
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                Expanded(
                  child: Text(
                    'Dynamic materiality only considers the ethical implication of ESG factors',
                    style:AppTextStyles.regularStyle.copyWith(     color: const Color(0xFF0B0B0B),
                      fontSize: 14,)
                  ),
                ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: Container(

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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    const BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 0,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFAFAFA),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            'C',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                              fontSize: 16,)
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Text(
                          'ESG integration only considers the financial implications of ESG factors',
                          style:AppTextStyles.regularStyle.copyWith(     color: const Color(0xFF0B0B0B),
                            fontSize: 14,)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    const BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 0,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFAFAFA),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            'B',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                              fontSize: 16,)
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Text(
                          'Dynamic materiality only considers the ethical implication of ESG factors',
                          style:AppTextStyles.regularStyle.copyWith(     color: const Color(0xFF0B0B0B),
                            fontSize: 14,)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: Container(
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    const BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 0,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFAFAFA),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            'D',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                              fontSize: 16,)
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Text(
                          'ESG integration only considers the financial implications of ESG factors',
                          style:AppTextStyles.regularStyle.copyWith(     color: const Color(0xFF0B0B0B),
                            fontSize: 14,)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40,),
    isPress==true? Column(
       crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Text.rich(
           TextSpan(
             children: [
               TextSpan(
                 text: 'Correct Answer ',
                 style:AppTextStyles.boldStyle.copyWith(   color: const Color(0xFF373737),
                   fontSize: 32,)
               ),
               TextSpan(
                 text: ':',
                 style: AppTextStyles.semiBoldStyle.copyWith(   color: const Color(0xFF373737),
                   fontSize: 26,)
               ),

               TextSpan(
                 text: ' A',
                 style:AppTextStyles.boldStyle.copyWith(     color: AppColors.primaryColor,
                   fontSize: 30,)
               ),
             ],
           ),
         ),
         const SizedBox(height: 15,),
         Text(
           'Explanation: ESG integration considers the changing significance of ESG factors over time and is therefore related to dynamic materiality. Both ESG integration and dynamic materiality take unto account the changing importance and impact of ESG factors. \nChoice B is incorrect as dynamic materiality considers both financial and ethical implications of ESG factors',
           style: AppTextStyles.regularStyle.copyWith( color: const Color(0xFF373737),
             fontSize: 24,)
         ),

       ],
     ):const SizedBox(),
     const SizedBox(height: 15,),
     Container(
       height: 48,
       width: MediaQuery.sizeOf(context).width*0.38,
       padding: const EdgeInsets.only(
         top: 12,
         left: 16,
         right: 8,
         bottom: 12,
       ),
       decoration: BoxDecoration(
         color: const Color(0xFFFFF6ED),
         borderRadius: BorderRadius.circular(12),
       ),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
           const Icon(Icons.calendar_month_sharp,color: Color(0xffFFA24D),),
         const SizedBox(width: 10,),
         Text(
           'You have 4 questions skipped',
           style: AppTextStyles.semiBoldStyle.copyWith(   color: const Color(0xFF0B0B0B),
             fontSize: 14,)
         ),
         const Spacer(),
         GestureDetector(
           onTap: (){
             navigationProvider.updateIndex(6);
           },
           child: Container(
             width: MediaQuery.sizeOf(context).width*0.05,
             height: 26,
             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
             decoration: ShapeDecoration(
               color: const Color(0xFFFFA24D),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
             ),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text(
                   'View',
                   style:AppTextStyles.semiBoldStyle.copyWith(  color: Colors.white,
                     fontSize: 12,),),

               ],
             ),
           ),
         )

       ],
       ),
     ),
     const SizedBox(height: 15,),

     isPress==false?
     Row(
          children: [
            Expanded(child: Container(height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF00703B)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            child: Center(
              child: Text(
                'Previous',
                style: AppTextStyles.mediumStyle.copyWith(   color: const Color(0xFF00703B),
                  fontSize: 14,)
              ),
            ),
            )),
            const SizedBox(width: 10),
            Container(
              width: MediaQuery.sizeOf(context).width*0.18,
              height: 44,
              child: Container(
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFCECECE)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(child: CustomButton(onTap: (){
              setState(() {
                isPress=!isPress;
              });
            }, title: 'Next')),
          ],
        ):
     Center(child: SizedBox(width: MediaQuery.sizeOf(context).width*0.40,child: CustomButton(onTap: (){},title: 'Next',),)),
        const SizedBox(height: 10,),

      ],
    );
  }
}
