import 'package:hdi_academy/models/Lesson.dart';

import 'Course.dart';

class Chapter {
  String title;
  String id;
  List<Lesson> lessons;
  bool finished;
  int order;
  Course course;

  int get lessonsCount => lessons.length;

  Lesson get currentLesson {
    if (null == lessons) {
      return null;
    } else {
      return lessons.firstWhere((element) => !element.finished);
    }
  }

  Chapter({this.title, this.id, this.finished, this.order, this.course});
}
