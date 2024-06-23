import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:course_selection_web_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../../provider/provider.dart';
import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text_styles.dart';

class CustomizeStudy extends StatefulWidget {
  const CustomizeStudy({super.key});

  @override
  State<CustomizeStudy> createState() => _CustomizeStudyState();
}

class _CustomizeStudyState extends State<CustomizeStudy> {
  bool  isSwitched=false;
  @override
  Widget build(BuildContext context) {
    final navigationProvider =
    Provider.of<TopicToStudyNavigationProvider>(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    navigationProvider.updateIndex(3);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryBlack,
                  )),
              const SizedBox(
                width: 15,
              ),
              Text('Customize Study',
                  style: AppTextStyles.boldStyle.copyWith(
                    color: Colors.black,
                    fontSize: 32,
                  ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width*0.80,
          height: MediaQuery.sizeOf(context).height*0.80,
            decoration: BoxDecoration(
              color: const Color(0xff393E52),
              borderRadius: BorderRadius.circular(10),
            ),
            child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: AppColors.primaryWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Select Date',
                          style: AppTextStyles.mediumStyle.copyWith(  color: Colors.black,
                            fontSize: 24,)
                        ),
                        const SizedBox(height: 15,),
        SfCalendar(
          view: CalendarView.month,
          monthCellBuilder: (BuildContext context, MonthCellDetails details) {
            final DateTime date = details.date;
            final bool isSunday = date.weekday == DateTime.sunday;
            final TextStyle textStyle = isSunday
                ? const TextStyle(color: Color(0xFFFF3636))
                : const TextStyle(color: Colors.black);

            // Check if the date belongs to the current month
            final bool isCurrentMonth = date.month == details.visibleDates[10].month;

            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent, width: 0.5),
              ),
              alignment: isCurrentMonth ? Alignment.center : Alignment.center,
              child: Text(
                date.day.toString(),
                style: textStyle,
              ),
            );
          },
        )
                      ],
                    ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            'Today target to stay on track is',
                            style: AppTextStyles.boldStyle.copyWith(   color: Colors.white,
                              fontSize: 32,)
                          ),
                          const SizedBox(height: 10,),
                          CustomTextField(
                            hintText: '5',
                            isFilled: true,isFilledColor: AppColors.primaryWhite,
                            suffixIcon:Text("min",style: AppTextStyles.regularStyle.copyWith(color: const Color(0xFF0B0B0B),
                              fontSize: 16,),),
                          ),
                          const SizedBox(height: 15,),
                          Text(
                              'What time should we remained you',
                              style: AppTextStyles.boldStyle.copyWith(   color: Colors.white,
                                fontSize: 32,)
                          ),
                          const SizedBox(height: 10,),
                          const CustomTextField(
                            hintText: '9:00',
                            isFilled: true,isFilledColor: AppColors.primaryWhite,
                            suffixIcon:Icon(Icons.watch_later_outlined,color: Color(0xff0B0B0B),),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Add study remainder to your calender',
                                  style:AppTextStyles.boldStyle.copyWith(   color: Colors.white,
                                    fontSize: 32,)
                                ),
                              ),
                              FlutterSwitch(
                                width: 50.0,
                                height: 18.0,
                                inactiveToggleColor: const Color(0xFFFFFFFF),
                                activeSwitchBorder: Border.all(color: Colors.white),
                                activeToggleBorder: Border.all(color: Colors.white),
                                inactiveToggleBorder: Border.all(color: Colors.white),
                                inactiveSwitchBorder: Border.all(color: Colors.white),
                                inactiveColor: const Color(0xffCECECE),
                                activeToggleColor: AppColors.primaryColor,
                                activeColor: Colors.white,
                                inactiveText: '',
                                activeText: '',
                                toggleSize: 25.0,
                                value: isSwitched,
                                padding: 0,
                                borderRadius: 30.0,
                                showOnOff: false,
                                onToggle: (v) {
                                  setState(() {
                                   isSwitched = v;
                                  });
                                },
                              )

                            ],
                          )
                          ,
                          const SizedBox(height: 10,),
                          SizedBox(
                              width: MediaQuery.sizeOf(context).width*0.25,
                              child: CustomButton(onTap: (){
                                navigationProvider.updateIndex(19);

                              }, title: "Save")),






                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
          const SizedBox(height: 10,)

        ],
      ),
    );
  }
}
