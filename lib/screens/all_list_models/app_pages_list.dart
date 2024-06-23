import 'package:course_selection_web_app/screens/auth_screen/create_account.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/fact_exam/fact_sheet.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/flask_card/flash_card.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/flask_card/study_through_flash_card.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/manual_plan.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/mock_test/mock_up_exam.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/mock_test/mock_up_exam_Result.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/mock_test/mock_up_skipped_question.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/mock_test/mockup_question.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/practice_by_chapter/practice_by_chapter.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/practice_by_chapter/question_by_chapter.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/practice_by_chapter/skipped_question_in_chapter.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/question_bank/question_bank.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/question_bank/skiped_question.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/Manuall_plan/study_notes/study_notes.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/choose_plan.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/customize_plan/all_study_plan/all_study_plan.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/customize_plan/customize_study.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/if_selected_caia.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/selection_of_course/if_selected_cipm.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/topic_to_study.dart';
import 'package:course_selection_web_app/screens/profile_screen/cfa_investing.dart';
import 'package:course_selection_web_app/screens/profile_screen/monitoring_board.dart';
import 'package:course_selection_web_app/screens/profile_screen/setting_screen.dart';

import '../profile_screen/profile_screen.dart';

final List authScreenPages=[
 IsCreateAccount(),
  IsLogIn(),
];

final List profileScreen=[
 IsProfileMain(),
 CfaInvesting(),
 SettingScreen(),
 MonitoringBoard(),

];

final List topicToStudyPages=[
 IsMainTopicToStudy(),
 IfSelectedCaia(),
 IfSelectedCipm(),
 ChoosePlan(),
 ManualPlan(),
 // Question Bank Screens
 QuestionBank(),
 SkippedQuestion(),
 // By Chapter Study Screens
 PracticeByChapter(),
 QuestionByChapter(),
 SkippedQuestionInChapter(),
 // flash Card Screen
 FlashCard(),
 // MockUp Screens
 MockUpExam(),
 MockUpQuestion(),
 SkippedQuestionInMockUp(),
 MockUpExamResult(),
 // Study Notes Screen
 StudyNotes(),
 // study through fact sheet
 FactSheet(),
 //study through flash card
 StudyThroughFlashCard(),

 // Customize Study 18 start
 CustomizeStudy(),
 AllStudyPlan(),

];





