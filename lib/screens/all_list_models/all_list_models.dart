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



class TopicModel{
  String title;
  String imagePath;
  TopicModel({required this.title, required this.imagePath});
}