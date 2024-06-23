import 'package:flutter/cupertino.dart';

class NavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  updateIndex(index){
    _currentIndex = index;
    notifyListeners();
  }
}


class TopicToStudyNavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  updateIndex(index){
    _currentIndex = index;
    notifyListeners();
  }
}


class ProfileProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  updateIndex(index){
    _currentIndex = index;
    notifyListeners();
  }
}