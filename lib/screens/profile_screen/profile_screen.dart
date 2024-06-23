import 'package:course_selection_web_app/provider/provider.dart';
import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:course_selection_web_app/screens/all_list_models/app_pages_list.dart';
import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final profileProvider=Provider.of<ProfileProvider>(context);
    return Expanded(
      child: ListView(
        children: [
          profileScreen[profileProvider.currentIndex],
        ],
      ),
    );
  }
}


class IsProfileMain extends StatefulWidget {
  const IsProfileMain({super.key});

  @override
  State<IsProfileMain> createState() => _IsProfileMainState();
}

class _IsProfileMainState extends State<IsProfileMain> {
  @override
  Widget build(BuildContext context) {
    final profileProvider=Provider.of<ProfileProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children:[
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
        const SizedBox(height: 20,),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 261, vertical: 9),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/images/manual/Ellipse 707.png"),
              ),
              const SizedBox(height: 10,),
              Text(
                'Dmitri',
                textAlign: TextAlign.center,
                style: AppTextStyles.boldStyle.copyWith( color: const Color(0xFF0B0B0B),
                  fontSize: 28,)
              ),
              const SizedBox(height: 10,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'dimitridangeros@mail.com',
                    style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF0B0B0B),
                      fontSize: 18,)
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.check_circle_outline,color: AppColors.primaryLightOne,)
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(onTap: (){}, title: "Edit Profile"),
                      const SizedBox(height: 40,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(profileData.length, (index)=>  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                                height: 40,width: 40,
                                image: AssetImage(profileData[index].imagePath)),
                            SizedBox(height: 5,),
                            Text(
                              profileData[index].title,
                              textAlign: TextAlign.center,
                              style: AppTextStyles.semiBoldStyle.copyWith( color: Color(0xFF0B0B0B),
                                fontSize: 20,)
                            ),


                          ],
                        ),
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Strikes',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.black,
                              fontSize: 24,)
                          ),
                          Spacer(),
                          Image(
                            height: 25,width: 25,
                            image: AssetImage("assets/icons/auth_screen/strike.png"),),
                          SizedBox(width: 10,),
                          Text(
                            '6 Days',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.regularStyle.copyWith( color: Colors.black,
                              fontSize: 24,)
                          )

                      ],),
                    ],
                  ),
              ),




            ],
          ),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Expanded(
                    child: Text(
                        'CFA ESG Investing',
                        style: AppTextStyles.boldStyle.copyWith(   color: Colors.black,
                          fontSize: 26,)
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      profileProvider.updateIndex(1);
                    },
                    child: Text(
                        'More',
                        style: AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF1E6F43),
                          fontSize: 20,)
                    ),
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

      ]
    );
  }
}
