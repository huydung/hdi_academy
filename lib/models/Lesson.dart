import 'package:hdi_academy/models/Chapter.dart';
import 'package:hdi_academy/models/activities/LearningActivity.dart';

class Lesson {
  String title;
  String id;
  int order;
  bool finished;
  Chapter chapter;
  List<LearningActivity> activities;

  Lesson({this.title, this.id, this.finished = false});
}
