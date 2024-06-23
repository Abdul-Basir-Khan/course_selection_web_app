import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:course_selection_web_app/screens/all_list_models/app_pages_list.dart';
import 'package:course_selection_web_app/themes/app_colors.dart';
import 'package:course_selection_web_app/themes/app_text_styles.dart';
import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/provider.dart';

class ManualPlan extends StatefulWidget {
  const ManualPlan({super.key});

  @override
  State<ManualPlan> createState() => _ManualPlanState();
}

class _ManualPlanState extends State<ManualPlan> {
  int _selectedIndex = 0;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final navigationProvider =
        Provider.of<TopicToStudyNavigationProvider>(context);

    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
              Text('CFA ESG Investing',
                  style: AppTextStyles.boldStyle.copyWith(
                    color: Colors.black,
                    fontSize: 32,
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text('Select Category',
              style: AppTextStyles.mediumStyle.copyWith(
                color: AppColors.text0B,
                fontSize: 32,
              )),
          const SizedBox(
            height: 15,
          ),
          ...List.generate(
            manualStudy.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                height: 72,
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 12,
                  right: 8,
                  bottom: 12,
                ),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: ShapeDecoration(
                  color: _selectedIndex == index
                      ? const Color(0xFFE7E7E7)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      manualStudy[index].imagePath,
                      height: 48,
                      width: 48,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(manualStudy[index].title,
                        style: AppTextStyles.boldStyle.copyWith(
                          color: _selectedIndex == index
                              ? const Color(0xff858585)
                              : AppColors.text0B,
                          fontSize: 14,
                        )),
                    const Spacer(),
                    StatefulBuilder(
                      builder: (BuildContext context,
                          void Function(void Function()) setState) {
                        return

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
                              _selectedIndex == index ? isSwitched = v : null;
                            });
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.40,
              child: CustomButton(
                  onTap: () {
                    _selectedIndex == 0 && isSwitched == true
                        ? navigationProvider.updateIndex(5)
                        : _selectedIndex == 1 && isSwitched == true
                            ? navigationProvider.updateIndex(7)
                            : _selectedIndex == 3 && isSwitched == true
                                ? navigationProvider.updateIndex(10):
                    _selectedIndex == 2 && isSwitched == true
                        ? navigationProvider.updateIndex(11):
                    _selectedIndex == 4 && isSwitched == true
                        ? navigationProvider.updateIndex(15):
                    _selectedIndex == 5 && isSwitched == true
                        ? navigationProvider.updateIndex(16)
                                : null;
                  },
                  title: 'Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
