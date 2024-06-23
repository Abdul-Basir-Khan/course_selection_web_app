import 'package:flutter/cupertino.dart';

final List homeIconList=[
  'assets/icons/auth_screen/home.png',
  'assets/icons/auth_screen/shopping_bag.png',
  'assets/icons/auth_screen/school.png',
  'assets/icons/auth_screen/account_circle.png',
];

final List<TopicModel> topicToStudy=[
TopicModel(title: 'CFA ESG Investing', imagePath: 'assets/icons/auth_screen/image 9.png'),
TopicModel(title: 'GARP SCR', imagePath: 'assets/icons/auth_screen/image 8.png'),
TopicModel(title: 'CAIA', imagePath: 'assets/icons/auth_screen/image 27.png'),
TopicModel(title: 'CIPM', imagePath: 'assets/icons/auth_screen/image 28.png'),
];


final List<TopicModel> manualStudy=[
  TopicModel(title: 'Practice Exam', imagePath: 'assets/images/manual/p-Exam.png'),
  TopicModel(title: 'Practice by Chapter', imagePath: 'assets/images/manual/p-chapter.png'),
  TopicModel(title: 'Mock Exam', imagePath: 'assets/images/manual/p-mock.png'),
  TopicModel(title: 'Fact Sheet', imagePath: 'assets/images/manual/p-fact.png'),
  TopicModel(title: 'Study Note', imagePath: 'assets/images/manual/p-studynotes.png'),
  TopicModel(title: 'Flash Card', imagePath: 'assets/images/manual/p-flashcard.png'),
];


final List<ByChapterModel> byChapterStudy=[
ByChapterModel(title: 'Chapter 1', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Continue'),
ByChapterModel(title: 'Chapter 2', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 3', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 4', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 5', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 6', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 7', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 8', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 8', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 9', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 10', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 11', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
ByChapterModel(title: 'Chapter 12', imagePath: 'assets/images/manual/p-flashcard.png', subTitle: 'Total Cards: 35', trailing: 'Start'),
];


final List<ByChapterModel> mockUpExam=[
  ByChapterModel(title: 'Mock Exam A', imagePath: 'assets/images/manual/p-mock.png', subTitle: 'Total Questions : 100', trailing: 'Start'),
  ByChapterModel(title: 'Mock Exam B', imagePath: 'assets/images/manual/p-mock.png', subTitle: 'Total Questions : 100', trailing: 'Locked'),
  ByChapterModel(title: 'Mock Exam C', imagePath: 'assets/images/manual/p-mock.png', subTitle: 'Total Questions : 100', trailing: 'Locked'),
  ByChapterModel(title: 'Mock Exam D', imagePath: 'assets/images/manual/p-mock.png', subTitle: 'Total Questions : 100', trailing: 'Locked'),
  ByChapterModel(title: 'Mock Exam E', imagePath: 'assets/images/manual/p-mock.png', subTitle: 'Total Questions : 100', trailing: 'Locked'),
];


final List<MockUpModel> mockUpModelData=[
  MockUpModel(score: 5, currentValue: 80, time: '12:10'),
  MockUpModel(score: 0, currentValue: 00, time: '12:10'),
  MockUpModel(score: 0, currentValue: 00, time: '12:10'),
  MockUpModel(score: 0, currentValue: 00, time: '12:10'),
  MockUpModel(score: 0, currentValue: 00, time: '12:10'),
];

final List<TopicModel> cutomiseAllStudyPLan=[
  TopicModel(title: 'Mock Exam A', imagePath: 'assets/images/manual/p-mock.png'),
  TopicModel(title: 'Mock Exam B', imagePath: 'assets/images/manual/p-mock.png'),
  TopicModel(title: 'Mock Exam C', imagePath: 'assets/images/manual/p-mock.png'),
  TopicModel(title: 'Study Notes', imagePath: 'assets/images/manual/p-studynotes.png'),
  TopicModel(title: 'Mock Exam D', imagePath: 'assets/images/manual/p-mock.png'),
  TopicModel(title: 'Flash Card', imagePath: 'assets/images/manual/p-flashcard.png'),
  TopicModel(title: 'Fact Sheets', imagePath: 'assets/images/manual/p-fact.png'),
  TopicModel(title: 'Mock Exam E', imagePath: 'assets/images/manual/p-mock.png'),
];


final List<TopicModel> storeTabData=[
  TopicModel(title: 'GARP SCR', imagePath: 'assets/icons/auth_screen/image 8.png'),
  TopicModel(title: 'CFA ESG', imagePath: 'assets/icons/auth_screen/image 9.png'),
  TopicModel(title: 'CAIA', imagePath: 'assets/icons/auth_screen/image 27.png'),
  TopicModel(title: 'CIMP', imagePath: 'assets/icons/auth_screen/image 28.png'),
];

final List<TopicModel> profileData=[
  TopicModel(title: 'S', imagePath: 'assets/images/manual/image 30.png'),
  TopicModel(title: 'M', imagePath: 'assets/images/manual/image 30.png'),
  TopicModel(title: 'T', imagePath: 'assets/icons/auth_screen/strike.png'),
  TopicModel(title: 'W', imagePath: 'assets/icons/auth_screen/strike.png'),
  TopicModel(title: 'T', imagePath: 'assets/images/manual/image 30.png'),
  TopicModel(title: 'F', imagePath: 'assets/images/manual/image 30.png'),
  TopicModel(title: 'S', imagePath: 'assets/images/manual/image 30.png'),
];


final List<HomeCoursesModel> homeCourseData=[
  HomeCoursesModel(imgPath: 'assets/images/manual/p-chapter.png', title: 'Chapters', currentValue: 60, score: 60),
  HomeCoursesModel(imgPath: 'assets/images/manual/p-Exam.png', title: 'Practice Exam', currentValue: 0, score: 0),
  HomeCoursesModel(imgPath: 'assets/images/manual/p-mock.png', title: 'Mock Exam', currentValue: 80, score: 80),
  HomeCoursesModel(imgPath: 'assets/images/manual/p-studynotes.png', title: 'Study Note', currentValue: 0, score: 0),
  HomeCoursesModel(imgPath: 'assets/images/manual/p-flashcard.png', title: 'Flash Card', currentValue: 0, score: 0),
  HomeCoursesModel(imgPath: 'assets/images/manual/p-fact.png', title: 'Fact Sheet', currentValue: 20, score: 20),
];

final List<SettingModel> settingData=[
  SettingModel(imgPath: 'assets/images/manual/p-Exam.png', title: 'Practice Questions', subTitle: '50'),
  SettingModel(imgPath: 'assets/images/manual/image 84.png', title: 'Question Visibility', subTitle: 'show All'),
  SettingModel(imgPath: 'assets/images/manual/p-flashcard.png', title: 'Flash Card', subTitle: 'Favorite'),
  SettingModel(imgPath: 'assets/icons/auth_screen/image 23.png', title: 'Study Mode', subTitle: 'Manual/Customized mode'),
  SettingModel(imgPath: 'assets/icons/auth_screen/ic_round-dark-mode.png', title: 'Dark Mode', subTitle: 'Disable'),
];

final List<MonitoringModel> monitoringData=[
  MonitoringModel(chapter: 'Chapter 1', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 2', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 3', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 4', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 5', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 6', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 7', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 8', percentage: 60  , score: 60, day: 22),
  MonitoringModel(chapter: 'Chapter 9', percentage: 60  , score: 60, day: 22),
];


final List<ByChapterModel> storeCourseData=[
  ByChapterModel(title: 'Exam A - 2024', imagePath: 'assets/images/manual/placeholder.png', subTitle: 'Practice Exam A for the CFA E', trailing: '39.99'),
  ByChapterModel(title: 'Exam B - 2024', imagePath: 'assets/images/manual/placeholder.png', subTitle: 'Practice Exam A for the CFA E', trailing: '39.99'),
  ByChapterModel(title: 'Exam C - 2024', imagePath: 'assets/images/manual/placeholder.png', subTitle: 'Practice Exam A for the CFA E', trailing: '39.99'),
  ByChapterModel(title: 'Exam D - 2024', imagePath: 'assets/images/manual/placeholder.png', subTitle: 'Practice Exam A for the CFA E', trailing: '39.99'),
];

class TopicModel{
  String title;
  String imagePath;
  TopicModel({required this.title, required this.imagePath});
}

class ByChapterModel{
  String title;
  String subTitle;
  String trailing;
  String imagePath;
  ByChapterModel({required this.title, required this.imagePath,required this.subTitle, required this.trailing});
}


class MockUpModel{
 int score;
 int currentValue;
 String time;
 MockUpModel({required this.score,required this.currentValue, required this.time});
}

class HomeCoursesModel{
  String imgPath;
  String title;
  int score;
  int currentValue;
  HomeCoursesModel({required this.imgPath,required this.title,required this.currentValue,required this.score});
}

class SettingModel{
  String imgPath;
  String title;
  String subTitle;
SettingModel({required this.imgPath,required this.title,required this.subTitle});
}

class MonitoringModel{
  String chapter;
  int percentage;
  int score;
  int day;
  MonitoringModel({required this.chapter,required this.percentage,required this.score,required this.day });

}
