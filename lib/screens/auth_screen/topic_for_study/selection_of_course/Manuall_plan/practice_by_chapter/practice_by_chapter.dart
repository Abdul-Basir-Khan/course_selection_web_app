import 'package:course_selection_web_app/dialog/all_dialogs/all_dialogs.dart';
import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_text_styles.dart';

class PracticeByChapter extends StatefulWidget {
  const PracticeByChapter({super.key});

  @override
  State<PracticeByChapter> createState() => _PracticeByChapterState();
}

class _PracticeByChapterState extends State<PracticeByChapter> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: (){
                navigationProvider.updateIndex(4);
              },
              child: const Icon(Icons.arrow_back_ios,color: AppColors.primaryBlack,)),
          const SizedBox(width: 15,),
          Text(
              'Chapter',
              style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                fontSize: 32,)
          ),
        ],
      ),
      const SizedBox(height: 15,),
...List.generate(byChapterStudy.length, (index)=> Container(
  height: 72,
  width: MediaQuery.sizeOf(context).width*0.40,
  margin: EdgeInsets.only(bottom: 10),
  padding: const EdgeInsets.only(
    top: 12,
    left: 12,
    bottom: 12,
    right: 12
  ),
  decoration: ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image(
    width:48,height: 48,
          image: AssetImage(byChapterStudy[index].imagePath,)),
      SizedBox(width: 10,),
      Expanded(
        child: GestureDetector(
          onTap: (){
            navigationProvider.updateIndex(8);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                byChapterStudy[index].title,
                style:AppTextStyles.boldStyle.copyWith( color: Colors.black,
                  fontSize: 14,)
              ),
              SizedBox(height: 6,),
              Text(
               byChapterStudy[index].subTitle,
                style: AppTextStyles.regularStyle.copyWith(  color: Color(0xFF7B7B7B),
                  fontSize: 12,)
              )
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          index==0?showDialog(context: context, builder: (BuildContext context) {return  DialogForPracticeQuestion(); }, ): index==1?showDialog(context: context, builder: (BuildContext context) {return  DialogForUnsolvedOnly(); }, ):null;
        },
        child: Text(
          byChapterStudy[index].trailing,
          style:AppTextStyles.regularStyle.copyWith( color: Color(0xFF00703B),
            fontSize: 12,)
        ),
      ),
    ],
  ),
),
)

    ],
    );
  }
}
