import 'package:course_selection_web_app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/provider.dart';

class FactSheet extends StatefulWidget {
  const FactSheet({super.key});

  @override
  State<FactSheet> createState() => _FactSheetState();
}

class _FactSheetState extends State<FactSheet> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TopicToStudyNavigationProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width*0.50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  navigationProvider.updateIndex(4);

                },
                child: Image(
                    height: 25,width: 25,
                    image: AssetImage("assets/icons/auth_screen/mdi_hamburger-menu.png")),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: Text(
                    'Fact sheets pdf 1/4 pages',
                    style: AppTextStyles.mediumStyle.copyWith(   color: Colors.black,
                      fontSize: 16,)
                ),
              ),
              Text(
                  '1 / 04',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mediumStyle.copyWith(   color: Colors.black,
                    fontSize: 20,)
              ),
              SizedBox(width: 10,),
              SizedBox(
                  height: 15,
                  child: VerticalDivider(thickness: 1,width: 1,color: Color(0xff5F5F5F),)),
              SizedBox(width: 10,),
              Icon(Icons.add_circle_outline,color: Color(0xff373737),),
              SizedBox(width: 10,),
              Text(
                  '100',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mediumStyle.copyWith(   color: Colors.black,
                    fontSize: 20,)
              ),
              SizedBox(width: 10,),
              Icon(Icons.remove_circle_outline,color: Color(0xff373737),),


            ],
          ),
        ),


      ],
    );
  }
}
