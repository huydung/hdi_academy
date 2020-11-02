import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/models/Lesson.dart';

import 'Course.dart';

class Chapter {
  String title;
  String id;
  List<Lesson> lessons = List();
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

  void addLessons(List<Lesson> lessons) {
    lessons.asMap().forEach((index, lesson) {
      //kLogger.d('Manipulating chapter ${chapter.title}');
      lesson.chapter = this;
      lesson.order = index;
      this.lessons.add(lesson);
    });
    kLogger.d(
        'Added ${this.lessons.length} chapters to the course, and also set ${this.lessons[0].chapter.title} as the chapter of the lesson');
  }

  Chapter({this.title, this.id, this.finished = false});
}
