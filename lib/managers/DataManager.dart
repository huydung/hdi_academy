import 'package:hdi_academy/models/Course.dart';

class DataManager {
  //This class should be accessed as a Singleton
  static DataManager _instance;

  DataManager._();

  static DataManager get instance {
    _instance = _instance ?? DataManager._();
    return _instance;
  }

  List<Course> courses;
}
