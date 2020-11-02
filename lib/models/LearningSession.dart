import 'package:flutter/material.dart';
import 'package:hdi_academy/models/Course.dart';
import 'package:hdi_academy/models/Lesson.dart';

import 'Chapter.dart';

class LearningSession extends ChangeNotifier {
  Lesson _currentLesson;
  Course _currentCourse;
  Chapter _currentChapter;

  set currentLesson(Lesson value) {
    _currentLesson = value;
    _currentChapter = _currentLesson.chapter;
    _currentCourse = _currentChapter.course;
  }

  Chapter get currentChapter => _currentChapter;
  Course get currentCourse => _currentCourse;
  Lesson get currentLesson => _currentLesson;
}
