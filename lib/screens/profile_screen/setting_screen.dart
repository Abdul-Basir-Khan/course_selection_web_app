import 'package:course_selection_web_app/dialog/all_dialogs/all_dialogs.dart';
import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                  profileProvider.updateIndex(1);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryBlack,
                )),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Settings',
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage("assets/images/manual/Ellipse 707.png"),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Dimitridangeros',
                    style: AppTextStyles.boldStyle.copyWith(
                      color: Colors.black,
                      fontSize: 24,
                    ),),

                Text('Opportunities don\'t happen, you....',
                    style: AppTextStyles.regularStyle.copyWith(
                      color: const Color(0xFF737373),
                      fontSize: 24,
                    ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 15,),
        ...List.generate(settingData.length, (index)=> Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage(settingData[index].imgPath),height: 48,width: 48,),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text(
                       settingData[index].title,
                        style:AppTextStyles.mediumStyle.copyWith( color: const Color(0xFF373737),
                          fontSize: 24,)
                      ),
                      Text(
                          settingData[index].subTitle,
                          style:AppTextStyles.regularStyle.copyWith(color: const Color(0xFF737373),
                            fontSize: 20,)
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){
                      index==3?profileProvider.updateIndex(3):index==0?showDialog(context: context, builder: (BuildContext context) { return DialogForPracticeQuestion(); }, ):index==1?showDialog(context: context, builder: (BuildContext context) { return DialogForUnsolvedOnly(); }, ):null;
                    },
                    child: const Icon(Icons.arrow_forward_ios,color: Color(0xff0B0B0B),))
              ],
            ),
            const SizedBox(height: 15,),
          ],
        ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xffD8DAD9),
              child: Icon(Icons.delete_outline_rounded,color: Colors.white,size: 18,),
            ),
            const SizedBox(width: 15,),
            Text(
              'Delete Account',
              style:AppTextStyles.mediumStyle.copyWith(  color: const Color(0xFF373737),
                fontSize: 24,)
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios,color: Color(0xff0B0B0B),)

          ],
        ),
        const SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xff0D1431),
              child: Icon(Icons.power_settings_new,color: Colors.white,size: 18,),
            ),
            const SizedBox(width: 15,),
            Text(
                'Log Out',
                style:AppTextStyles.mediumStyle.copyWith(  color: const Color(0xFF373737),
                  fontSize: 24,)
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios,color: Color(0xff0B0B0B),)

          ],
        ),
      ],
    );
  }
}
