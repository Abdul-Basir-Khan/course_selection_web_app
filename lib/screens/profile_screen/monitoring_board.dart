import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class MonitoringBoard extends StatefulWidget {
  const MonitoringBoard({super.key});

  @override
  State<MonitoringBoard> createState() => _MonitoringBoardState();
}

class _MonitoringBoardState extends State<MonitoringBoard> {
  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  profileProvider.updateIndex(2);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryBlack,
                )),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Monitoring Board',
              style: AppTextStyles.boldStyle.copyWith(
                color: Colors.black,
                fontSize: 32,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text('CFA ESG Investing',
            style: AppTextStyles.semiBoldStyle.copyWith(
              color: Colors.black,
              fontSize: 28,
            )),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: monitoringData.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 107,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x16000000),
                          blurRadius: 2,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x0C000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x02000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x00000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(monitoringData[index].chapter,
                                style: AppTextStyles.mediumStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                            Text('${monitoringData[index].percentage}% Correct',
                                style: AppTextStyles.regularStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 18,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearProgressBar(
                          maxSteps: 100,
                          progressType: LinearProgressBar.progressTypeLinear,
                          // Use Linear progress
                          currentStep: monitoringData[index].score,
                          progressColor: AppColors.primaryColor,
                          backgroundColor: const Color(0xFFFAFAFA),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('${monitoringData[index].day}/30',
                                style: AppTextStyles.regularStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child:

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.start,children: [
             Container(
               padding: EdgeInsets.all(10),
               decoration: ShapeDecoration(
                 color: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(11.30),
                 ),
                 shadows: [
                   BoxShadow(
                     color: Color(0x19000000),
                     blurRadius: 21.47,
                     offset: Offset(0, 0),
                     spreadRadius: 0,
                   )
                 ],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                 Text(
                     'Recent Practice Exam',
                     style: AppTextStyles.boldStyle.copyWith( color: Colors.black,
                       fontSize: 20,)
                 ),
                 SizedBox(height: 10,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CircularPercentIndicator(
                       radius: 60.0,
                       lineWidth: 10.0,
                       percent: 0.24,
                       backgroundColor: Colors.transparent,
                       center: Text.rich(
                         TextSpan(
                           children: [
                             TextSpan(
                                 text: 'Questions\n',
                                 style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                   fontSize: 10,)
                             ),
                             TextSpan(
                                 text: '75/100',
                                 style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
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
                       lineWidth: 10.0,
                       percent: 0.65,
                       backgroundColor: Colors.transparent,
                       center: Text.rich(
                         TextSpan(
                           children: [

                             TextSpan(
                                 text: 'Score\n',
                                 style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                   fontSize: 10,)
                             ),
                             TextSpan(
                                 text: '60%',
                                 style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
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
               ),
             ),
             SizedBox(height: 15,),
             Container(
               padding: EdgeInsets.all(10),
               decoration: ShapeDecoration(
                 color: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(11.30),
                 ),
                 shadows: [
                   BoxShadow(
                     color: Color(0x19000000),
                     blurRadius: 21.47,
                     offset: Offset(0, 0),
                     spreadRadius: 0,
                   )
                 ],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                 Text(
                     'Recent Practice Exam',
                     style: AppTextStyles.boldStyle.copyWith( color: Colors.black,
                       fontSize: 20,)
                 ),
                 SizedBox(height: 10,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CircularPercentIndicator(
                       radius: 60.0,
                       lineWidth: 10.0,
                       percent: 0.24,
                       backgroundColor: Colors.transparent,
                       center: Text.rich(
                         TextSpan(
                           children: [
                             TextSpan(
                                 text: 'Questions\n',
                                 style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                   fontSize: 10,)
                             ),
                             TextSpan(
                                 text: '75/100',
                                 style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
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
                       lineWidth: 10.0,
                       percent: 0.65,
                       backgroundColor: Colors.transparent,
                       center: Text.rich(
                         TextSpan(
                           children: [

                             TextSpan(
                                 text: 'Score\n',
                                 style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                                   fontSize: 10,)
                             ),
                             TextSpan(
                                 text: '60%',
                                 style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
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
               ),
             )
           ],
           )
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(mockUpExam.length, (index)=> Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(right: 13),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.30),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 21.47,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    mockUpExam[index].title,
                    style: AppTextStyles.boldStyle.copyWith(  color: Colors.black,
                      fontSize: 20,)
                ),
                SizedBox(height: 15,),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 10.0,
                  percent: 0.24,
                  backgroundColor: Colors.transparent,
                  center: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Score\n',
                            style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                              fontSize: 10,)
                        ),
                        TextSpan(
                            text: '60%',
                            style: AppTextStyles.boldStyle.copyWith(  color: const Color(0xFF0B0B0B),
                              fontSize: 10,)
                        ),

                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  progressColor: AppColors.primaryColor,
                ),
              ],
            ),
          ),),
        ),
        SizedBox(height: 15,),

      ],
    );
  }
}
