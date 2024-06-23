import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:course_selection_web_app/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../themes/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShowDetailsOfCourse=false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              const Image(
                  height: 25,
                  width: 25,
                  image:
                  AssetImage("assets/icons/auth_screen/chronometer.png")),
              const SizedBox(
                width: 20,
              ),
              Text('25 Mins',
                  style: AppTextStyles.boldStyle.copyWith(
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 40,
              ),
              const Image(
                  height: 25,
                  width: 25,
                  image: AssetImage("assets/icons/auth_screen/strike.png")),
              const SizedBox(
                width: 20,
              ),
              Text('2 Days',
                  style: AppTextStyles.boldStyle.copyWith(
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 40,
              ),
              const CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/icons/auth_screen/Ellipse 55.png"),
              ),
              const SizedBox(
                width: 20,
              ),
              Text('Hi, Dimi',
                  style: AppTextStyles.boldStyle.copyWith(
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text('Continue Learning',
              style: AppTextStyles.boldStyle.copyWith(
                color: Colors.black,
                fontSize: 32,
              )),
          Text('Your Learning',
              style: AppTextStyles.boldStyle.copyWith(
                color: Colors.black,
                fontSize: 30,
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width*.36,
                    padding: const EdgeInsets.all(15),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFCDFFEB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                            const Image(
                                height: 52,width:52,
                                image: AssetImage("assets/icons/auth_screen/image 9.png")),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                isShowDetailsOfCourse=!isShowDetailsOfCourse;
                              });
                            },
                              child: isShowDetailsOfCourse?const Icon(Icons.keyboard_arrow_up,color: Color(0xff0B0B0B),):const Icon(Icons.keyboard_arrow_down,color: Color(0xff0B0B0B),)
                          ),
                        ],
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          'CFA ESG Investing',
                          style:AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                            fontSize: 14,)
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: LinearProgressBar(
                                maxSteps: 100,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 50,
                                progressColor:AppColors.primaryColor,
                                backgroundColor:const Color(0xFFFAFAFA),
                              ),
                            ),
                            const Image(
                                height: 25,width: 25,
                                image: AssetImage("assets/icons/auth_screen/image 35.png"))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),

             isShowDetailsOfCourse? Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...List.generate(homeCourseData.length, (index)=>     Container(
                    width: MediaQuery.sizeOf(context).width*0.36,
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
                  )
                ],
              ):const SizedBox()

                ],
              ),
             const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.37,
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 28),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'You’re on 2 days streak',
                                style: AppTextStyles.boldStyle.copyWith( color: Colors.black,
                                  fontSize: 26,)
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                'Learn every day and you streak won’t reset',
                                style:AppTextStyles.regularStyle.copyWith(  color: const Color(0xFFAFAFAF),
                                  fontSize: 16,)
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Image(
                            height: MediaQuery.sizeOf(context).height*0.17,
                           width: MediaQuery.sizeOf(context).height*0.20,
                            image: const AssetImage("assets/icons/auth_screen/strike.png"))

                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                      width: MediaQuery.sizeOf(context).width*0.37,
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,children: [
                          Expanded(
                            child: Text(
                              'CFA ESG Investing',
                              style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                                fontSize: 26,)
                            ),
                          ),
                          Text(
                            'More',
                            style: AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF1E6F43),
                              fontSize: 20,)
                          )

                        ],
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
                          ],
                        )
                      ],
                    )
                  )
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}
