import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/models/Chapter.dart';
import 'package:hdi_academy/models/Lesson.dart';

class Course {
  String title;
  String id;
  List<Chapter> chapters = List();

  int get chapterCount => chapters.length;

  Chapter get currentChapter {
    if (null == chapters) return null;

    return chapters.firstWhere((element) => !element.finished);
  }

  Lesson get currentLesson {
    if (null == currentChapter) return null;
    return currentChapter.currentLesson;
  }

  void addChapters(List<Chapter> chapters) {
    //kLogger.d('Adding ${chapters.length} chapters');
    chapters.asMap().forEach((index, chapter) {
      //kLogger.d('Manipulating chapter ${chapter.title}');
      chapter.course = this;
      chapter.order = index;
      this.chapters.add(chapter);
    });
    kLogger.d(
        'Added ${this.chapters.length} chapters to the course, and also set ${this.chapters[0].course.title} as the course of the chapter');
  }

  Course({this.title, this.id});
}
