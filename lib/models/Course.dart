import 'package:hdi_academy/models/Chapter.dart';
import 'package:hdi_academy/models/Lesson.dart';

class Course {
  String title;
  String id;
  List<Chapter> chapters;

  int get chapterCount => chapters.length;

  Chapter get currentChapter {
    if (null == chapters) return null;

    return chapters.firstWhere((element) => !element.finished);
  }

  Lesson get currentLesson {
    if (null == currentChapter) return null;
    return currentChapter.currentLesson;
  }

  Course({this.title, this.id});
}
