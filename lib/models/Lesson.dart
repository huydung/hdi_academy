import 'package:hdi_academy/models/Chapter.dart';

class Lesson {
  String title;
  String id;
  int order;
  bool finished;

  Chapter chapter;

  Lesson({this.title, this.id, this.order, this.finished, this.chapter});
}
