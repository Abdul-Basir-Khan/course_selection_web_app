import 'package:course_selection_web_app/screens/all_list_models/app_pages_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../provider/provider.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text_styles.dart';
import '../../../../widgets/custom_buttom.dart';


class ChoosePlan extends StatefulWidget {
  const ChoosePlan({super.key});

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  bool isManual=false;
  bool isCustomize=false;
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);
    return    SizedBox(
      width: MediaQuery.sizeOf(context).width*0.60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
        SizedBox(height: 50,),
          Image(
            height: 100,width: 100,
            image:AssetImage("assets/icons/auth_screen/notebook.png") ,),
        SizedBox(height: 50,),
        Text(
            'Let’s set up your study plan',
            textAlign: TextAlign.center,
            style:AppTextStyles.boldStyle.copyWith(  fontSize: 32,)
        ),
        Text(
            "Study at the same time each day that help to reach your goal",
            textAlign: TextAlign.center,
            style:AppTextStyles.mediumStyle.copyWith( color:AppColors.text6D,
              fontSize: 22,)
        ),
        SizedBox(height: 30,),

        GestureDetector(
          onTap: (){
            setState(() {
              isManual=true;
              isCustomize=false;
            });

          },
          child: Container(
            height: 72,
            margin: EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.only(
              top: 7,
              left: 12,
              right: 8,
              bottom: 7,
            ),
            decoration: ShapeDecoration(
              color:Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Image.asset(
                  height: 48,width: 48,
                  "assets/icons/auth_screen/image 23.png"),
              SizedBox(width: 10,),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      'Manual Study',
                      style:AppTextStyles.mediumStyle.copyWith(  color: AppColors.text0B,
                          fontSize: 14)
                  ),
                  Text(
                    'Let you select material that you want to study',
                    style:AppTextStyles.regularStyle.copyWith(   color: AppColors.text6D,
                      fontSize: 12,)
                  )
                ],
              )
            ],
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            setState(() {
              isCustomize=true;
              isManual=false;
            });
          },
          child: Container(
            height: 72,
            margin: EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.only(
              top: 7,
              left: 12,
              right: 8,
              bottom: 7,
            ),
            decoration: ShapeDecoration(
              color:Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Image.asset(
                  height: 48,width: 48,
                  "assets/icons/auth_screen/image 26.png"),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      'Customized Study',
                      style:AppTextStyles.mediumStyle.copyWith(  color: AppColors.text0B,
                          fontSize: 14)
                  ),
                  Text(
                      'Let you set your estimate your study per day to reach your goal ',
                      style:AppTextStyles.regularStyle.copyWith(   color: AppColors.text6D,
                        fontSize: 12,)
                  )
                ],
              )
            ],
            ),
          ),
        ),

        Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width*0.40,
            child: CustomButton(onTap: (){
              isManual==true?navigationProvider.updateIndex(4):navigationProvider.updateIndex(18);
           } ,title:
            'Continue',),
          ),
        )
      ],
      ),
    );
  }
}
