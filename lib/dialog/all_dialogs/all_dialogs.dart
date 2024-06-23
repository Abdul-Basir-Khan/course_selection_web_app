import 'dart:ui';


import 'package:course_selection_web_app/themes/app_text_styles.dart';
import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';


class DialogForPracticeQuestion extends StatelessWidget {

  const DialogForPracticeQuestion({super.key,});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: AppColors.primaryWhite,
        shape: RoundedRectangleBorder(
        side:const BorderSide(
          color: AppColors.primaryColor
        ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 128,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF1C6E41)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Practice Questions',
                          style:AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                            fontSize: 24,)
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          '50',
                          style: AppTextStyles.semiBoldStyle.copyWith(    color: const Color(0xFF1C6E41),
                            fontSize: 16,)
                        ),


                      ],
                    ),
                  ),
                  Positioned(
                    top: -10,left: 0,right: 0,
                    child: Image.asset(
                        height: 48,width: 48,
                        "assets/images/manual/p-flashcard.png"),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.sizeOf(context).width*0.23,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1C6E41),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style:AppTextStyles.mediumStyle.copyWith(    color: Colors.white,
                            fontSize: 18,)
                      ),
                    ),

                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: MediaQuery.sizeOf(context).width*0.23,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFACACAC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style:AppTextStyles.mediumStyle.copyWith(    color: Colors.white,
                            fontSize: 18,)
                      ),
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class DialogForUnsolvedOnly extends StatelessWidget {

  const DialogForUnsolvedOnly({super.key,});

  @override
  Widget build(BuildContext context) {
    return

      BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: AppColors.primaryWhite,
        shape: RoundedRectangleBorder(
          side:const BorderSide(
              color: AppColors.primaryColor
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 128,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF1C6E41)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Show Unsolved Only',
                            style:AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                              fontSize: 24,)
                        ),
                        const SizedBox(height: 10,),
                        Text(
                            'Show all',
                            style: AppTextStyles.semiBoldStyle.copyWith(    color: const Color(0xFF1C6E41),
                              fontSize: 16,)
                        ),


                      ],
                    ),
                  ),
                  Positioned(
                    top: -10,left: 0,right: 0,
                    child: Image.asset(
                        height: 48,width: 48,
                        "assets/images/manual/p-flashcard.png"),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.sizeOf(context).width*0.23,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1C6E41),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    child: Center(
                      child: Text(
                          'Save',
                          style:AppTextStyles.mediumStyle.copyWith(    color: Colors.white,
                            fontSize: 18,)
                      ),
                    ),

                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: MediaQuery.sizeOf(context).width*0.23,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFACACAC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    child: Center(
                      child: Text(
                          'Save',
                          style:AppTextStyles.mediumStyle.copyWith(    color: Colors.white,
                            fontSize: 18,)
                      ),
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MockUpUnlockDialog extends StatelessWidget {
  const MockUpUnlockDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return    BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: AppColors.primaryWhite,
        shape: RoundedRectangleBorder(
          side:const BorderSide(
              color: AppColors.primaryColor
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Unlock  Mock Exam B',
                    style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                      fontSize: 60,)
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.15,),
                  const Icon(Icons.close,color: Color(0xff0B0B0B),)
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                      height: 50,width: 50,
                      'assets/images/manual/placeholder.png'),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                      Text(
                        'Mock Exam B',
                        style: AppTextStyles.semiBoldStyle.copyWith(    color: const Color(0xFF0B0B0B),
                          fontSize: 16,)
                      ),

                      Text(
                        'Practice Exam B for the CFA ESG Investing Certificate 2024 a practice test specifically designed to prepare individuals for the CFA ESG Investing Certificate.',
                        style: AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF6D6D6D),
                          fontSize: 12,)
                      ),
                      Text(
                        '39.99',
                        style:AppTextStyles.semiBoldStyle.copyWith( color: const Color(0xFF0B0B0B),
                          fontSize: 14,)
                      ),
                    ],
                    ),
                  )
                  
                ],
              ),
              const SizedBox(height: 30,),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.35,
                  child: CustomButton(onTap: (){}, title: "Buy"))

            ],
          ),
        ),
      ),
    );
  }
}
