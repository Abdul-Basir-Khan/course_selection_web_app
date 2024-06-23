import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:course_selection_web_app/screens/all_list_models/app_pages_list.dart';
import 'package:course_selection_web_app/themes/app_colors.dart';
import 'package:course_selection_web_app/themes/app_text_styles.dart';
import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/provider.dart';

class TopicToStudy extends StatefulWidget {
  const TopicToStudy({super.key});

  @override
  State<TopicToStudy> createState() => _TopicToStudyState();
}

class _TopicToStudyState extends State<TopicToStudy> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationProvider =
        Provider.of<TopicToStudyNavigationProvider>(context);
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
          topicToStudyPages[navigationProvider.currentIndex],
        ],
      ),
    );
  }
}

class IsMainTopicToStudy extends StatefulWidget {
  const IsMainTopicToStudy({super.key});

  @override
  State<IsMainTopicToStudy> createState() => _IsMainTopicToStudyState();
}

class _IsMainTopicToStudyState extends State<IsMainTopicToStudy> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationProvider =
        Provider.of<TopicToStudyNavigationProvider>(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select Topic Study',
              textAlign: TextAlign.center,
              style: AppTextStyles.boldStyle.copyWith(
                fontSize: 34,
              )),
          Text('Please select your topic study you want to learn.',
              textAlign: TextAlign.center,
              style: AppTextStyles.mediumStyle.copyWith(
                color: AppColors.text6D,
                fontSize: 22,
              )),
          const SizedBox(
            height: 30,
          ),
          ...List.generate(
            topicToStudy.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Container(
                height: 72,
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.only(
                  top: 7,
                  left: 12,
                  right: 8,
                  bottom: 7,
                ),
                decoration: ShapeDecoration(
                  color: _currentIndex == index
                      ? AppColors.primaryLight
                      : Colors.transparent,
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
                        height: 48, width: 48, topicToStudy[index].imagePath),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(topicToStudy[index].title,
                        style: AppTextStyles.boldStyle.copyWith(
                          color: AppColors.text0B,
                          fontSize: 14,
                        )),
                    const Spacer(),
                    _currentIndex == index
                        ? const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.primaryColor,
                            child: Center(
                              child: Icon(
                                Icons.done,
                                size: 10,
                                color: AppColors.primaryWhite,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.40,
              child: CustomButton(
                onTap: () {
                  _currentIndex == 2
                      ? navigationProvider.updateIndex(1)
                      : _currentIndex == 3
                          ? navigationProvider.updateIndex(2)
                          : null;
                },
                title: 'Continue',
              ),
            ),
          )
        ],
      ),
    );
  }
}
