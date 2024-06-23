import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';

class MockUpExam extends StatefulWidget {
  const MockUpExam({super.key});

  @override
  State<MockUpExam> createState() => _MockUpExamState();
}

class _MockUpExamState extends State<MockUpExam> {
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
                  navigationProvider.updateIndex(4);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryBlack,
                )),
            const SizedBox(
              width: 15,
            ),
            Text('Mock Exams',
                style: AppTextStyles.boldStyle.copyWith(
                  color: Colors.black,
                  fontSize: 32,
                )),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                    mockUpExam.length,
                    (index) => Container(
                          height: 72,
                         margin: EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(
                              top: 12, left: 12, bottom: 12, right: 12),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side:
                                  BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                  height: 48,
                                  width: 48,
                                  image: AssetImage(mockUpExam[index].imagePath)),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(mockUpExam[index].title,
                                          style: AppTextStyles.boldStyle.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                          )),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(mockUpExam[index].subTitle,
                                          style:
                                              AppTextStyles.regularStyle.copyWith(
                                            color: Color(0xFF7B7B7B),
                                            fontSize: 12,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  index==0?navigationProvider.updateIndex(12):null;
                                },
                                child: Container(
                                  height: 34,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: ShapeDecoration(
                                    color: index == 0
                                        ? Color(0xFF007235)
                                        : Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      index != 0
                                          ? Icon(
                                              Icons.lock_outline,
                                              color: Color(0xff6D6D6D),
                                            )
                                          : SizedBox(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      index == 0
                                          ? Text(mockUpExam[index].trailing,
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ))
                                          : Text(mockUpExam[index].trailing,
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                color: Color(0xFF6D6D6D),
                                                fontSize: 12,
                                              )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 134.62,
                    padding:
                        const EdgeInsets.all(10),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('you’re on 2 days streak',
                                style: AppTextStyles.semiBoldStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Learn every day and streak \nwon’t reset',
                                style: AppTextStyles.regularStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            width: MediaQuery.sizeOf(context).width * 0.14,
                            image:
                                AssetImage("assets/icons/auth_screen/strike.png"))
                      ],
                    ),
                  ),
                SizedBox(height: 10,),
                ...List.generate(mockUpModelData.length, (index)=>   Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
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
                      Text(
                       mockUpExam[index].title,
                        style: AppTextStyles.semiBoldStyle.copyWith(    color: Colors.black,
                          fontSize: 20,)
                      ),
                      SizedBox(height: 5,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: LinearProgressBar(
                              maxSteps: 100,
                              progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                              currentStep: mockUpModelData[index].score,
                              progressColor:AppColors.primaryColor,
                              backgroundColor:const Color(0xFFFAFAFA),
                            ),
                          ),
                          Text(
                            '${mockUpModelData[index].currentValue}/100',
                            textAlign: TextAlign.right,
                            style:AppTextStyles.regularStyle.copyWith(   color: Color(0xFF6D6D6D),
                              fontSize: 12,)
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: 
                        CrossAxisAlignment.center,children: [
                          Image(
                              height: 27,width: 27,
                              image: AssetImage("assets/icons/auth_screen/Speedometer.png")),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text(
                            'Score',
                            style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF0B0B0B),
                              fontSize: 12,)
                          ),
                        ),
                        Text(
                         "${mockUpModelData[index].currentValue}",
                          style:AppTextStyles.semiBoldStyle.copyWith(color: Color(0xFF1FBE42),
                            fontSize: 14,)
                        )

                      ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,children: [
                        Image(
                            height: 27,width: 27,
                            image: AssetImage("assets/icons/auth_screen/hour glass.png")),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text(
                              'Total time',
                              style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF0B0B0B),
                                fontSize: 12,)
                          ),
                        ),
                        Text(
                            mockUpModelData[index].time,
                            style:AppTextStyles.semiBoldStyle.copyWith(color: Color(0xFF1FBE42),
                              fontSize: 14,)
                        )

                      ],
                      )
                    ],
                  ),
                ),)
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
