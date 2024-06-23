import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';
import '../all_list_models/all_list_models.dart';

class CfaInvesting extends StatefulWidget {
  const CfaInvesting({super.key});

  @override
  State<CfaInvesting> createState() => _CfaInvestingState();
}

class _CfaInvestingState extends State<CfaInvesting> {
  @override
  Widget build(BuildContext context) {
    final profileProvider=Provider.of<ProfileProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                 profileProvider.updateIndex(0);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryBlack,
                )),
            const SizedBox(
              width: 15,
            ),
            Text('CFA ESG Investing',
                style: AppTextStyles.boldStyle.copyWith(
                  color: Colors.black,
                  fontSize: 32,
                ),
            ),
          ],
        ),

        const SizedBox(height: 20,),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 4,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'CFA ESG Investing',
                    style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                      fontSize: 26,)
                ),
                const SizedBox(height: 7,),
                const Divider(thickness: 1,height: 1,color: Color(0xffE7E7E7),),
                const SizedBox(height: 7,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.24,
                      backgroundColor: Colors.transparent,
                      center: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '110/1155\n',
                                style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                            TextSpan(
                                text: 'Questions',
                                style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      progressColor: AppColors.primaryColor,
                    ),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.65,
                      backgroundColor: Colors.transparent,
                      center: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '60%\n',
                                style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                            TextSpan(
                                text: 'Score',
                                style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      progressColor: AppColors.primaryColor,
                    ),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.50,
                      backgroundColor: Colors.transparent,
                      center: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '50/100\n',
                                style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                            TextSpan(
                                text: 'Practice',
                                style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      progressColor: AppColors.primaryColor,
                    ),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.50,
                      backgroundColor: Colors.transparent,
                      center: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '50/100\n',
                                style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                            TextSpan(
                                text: 'Flash Card',
                                style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                  fontSize: 10,)
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      progressColor: AppColors.primaryColor,
                    ),
                  ],
                )
              ],
            )
        ),
        const SizedBox(height: 20,),
        ...List.generate(homeCourseData.length, (index)=>     Container(
          width: MediaQuery.sizeOf(context).width*0.60,
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                  height: 48,width: 48,
                  image: AssetImage(homeCourseData[index].imgPath)),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    Expanded(
                      child: Text(
                        homeCourseData[index].title,
                        style: AppTextStyles.mediumStyle.copyWith(   color: const Color(0xFF0B0B0B),
                          fontSize: 14,),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios,color: Color(0xff0B0B0B),size: 18,),
                  ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: LinearProgressBar(
                          maxSteps: 100,
                          progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                          currentStep:homeCourseData[index].score,
                          progressColor:AppColors.primaryColor,
                          backgroundColor:const Color(0xFFFAFAFA),
                        ),
                      ),

                      Text(
                          "${homeCourseData[index].currentValue} %",
                          textAlign: TextAlign.right,
                          style: AppTextStyles.regularStyle.copyWith( color: const Color(0xFF6D6D6D),
                            fontSize: 12,)
                      )
                    ],
                  ),


                ],
                ),
              )
            ],
          ),
        ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          width: MediaQuery.sizeOf(context).width*0.60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.settings,color: AppColors.primaryBlack,),
              SizedBox(width: 10,),
              Text(
                'Setting',
                style: AppTextStyles.boldStyle.copyWith(   color: Color(0xFF0B0B0B),
                  fontSize: 14,)
              ),
              Spacer(),
              GestureDetector(
                  onTap: (){
                    profileProvider.updateIndex(2);
                  },
                  child: const Icon(Icons.arrow_forward_ios,color: Color(0xff0B0B0B),size: 18,)),

            ],
          ),
        )

      ],
    );
  }
}
