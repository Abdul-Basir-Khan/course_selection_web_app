import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';

class StudyThroughFlashCard extends StatefulWidget {
  const StudyThroughFlashCard({super.key});

  @override
  State<StudyThroughFlashCard> createState() => _StudyThroughFlashCardState();
}

class _StudyThroughFlashCardState extends State<StudyThroughFlashCard> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  navigationProvider.updateIndex(10);
                },
                child: const Icon(Icons.arrow_back_ios,color: AppColors.primaryBlack,)),
            const SizedBox(width: 15,),
            Text(
                'Flash Cards',
                style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                  fontSize: 32,)
            ),
          ],
        ),
        const SizedBox(height: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [

            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffD9D9D9),
                  child: Icon(Icons.arrow_back,color: Color(0xff646363),),
                ),
                const SizedBox(width: 15,),
                Container(
                  height:MediaQuery.sizeOf(context).height*0.65,
                  width: MediaQuery.sizeOf(context).width*0.46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.32),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4.53,
                        offset: Offset(0, 4.53),
                        spreadRadius: 0,
                      )
                    ],
                  ),

                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),

                          Text(
                            '1/23',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.boldStyle.copyWith(    color: const Color(0xFF373737),
                              fontSize: 24,)
                          ),
                          const Spacer(),
                          const Icon(Icons.favorite,color: Color(0xffFE0C9D)),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        'UN Framework Convention on Climate Change (UNFCCC)',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.boldStyle.copyWith(  color: Colors.black,
                          fontSize: 47,)
                      ),
                      const SizedBox(height: 30,),




                    ],

                  ),
                ),
                const SizedBox(width: 15,),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.arrow_forward,color: Color(0xffFFFFFF),),
                ),
              ],
            )
        ],
        )



      ],
    );
  }
}
