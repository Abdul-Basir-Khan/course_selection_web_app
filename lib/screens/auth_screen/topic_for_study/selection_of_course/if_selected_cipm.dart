import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../provider/provider.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text_styles.dart';
import '../../../../widgets/custom_buttom.dart';


class IfSelectedCipm extends StatelessWidget {
  const IfSelectedCipm({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);
    return    SizedBox(
      width: MediaQuery.sizeOf(context).width*0.60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
        Text(
            'Select Topic Study',
            textAlign: TextAlign.center,
            style:AppTextStyles.boldStyle.copyWith(  fontSize: 34,)
        ),
        Text(
            'Please select your topic study you want to learn.',
            textAlign: TextAlign.center,
            style:AppTextStyles.mediumStyle.copyWith( color:AppColors.text6D,
              fontSize: 22,)
        ),
        SizedBox(height: 30,),
        Container(
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
                "assets/icons/auth_screen/image 28.png"),
            SizedBox(width: 10,),
            Text(
                'CIPM Level 1',
                style:AppTextStyles.mediumStyle.copyWith(  color: AppColors.text0B,
                    fontSize: 14)
            )
          ],
          ),
        ),
        Container(
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
                "assets/icons/auth_screen/image 28.png"),
            SizedBox(width: 10,),
            Text(
                'CIPMLevel 2',
                style:AppTextStyles.mediumStyle.copyWith(  color: AppColors.text0B,
                    fontSize: 14)
            )
          ],
          ),
        ),

        Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width*0.40,
            child: CustomButton(onTap: (){
            navigationProvider.updateIndex(3);
            } ,title:
            'Continue',),
          ),
        )


      ],
      ),
    );
  }
}
