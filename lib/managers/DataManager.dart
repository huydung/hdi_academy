import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/models/Chapter.dart';
import 'package:hdi_academy/models/Course.dart';
import 'package:hdi_academy/models/LearningSession.dart';
import 'package:hdi_academy/models/Lesson.dart';

class DataManager {
  //This class should be accessed as a Singleton
  static DataManager _instance;

  DataManager._();

  static DataManager get instance {
    _instance = _instance ?? DataManager._();
    return _instance;
  }

  LearningSession _learningSession;
  LearningSession get learningSession {
    if (_learningSession == null) {
      _createDumpData();
    }
    return _learningSession;
  }

  _createDumpData() {
    kLogger.d('Creating Dump Data');
    Course courseCriticalThinking =
        Course(id: 'ct', title: 'Critical Thinking');

    //create chapters
    Chapter chap1 = Chapter(title: 'Understand Critical Thinking', id: 'ct1');
    //create lessons for chapter 1
    Lesson l1_1 = Lesson(
        id: 'l1_1', title: 'All results come from your ability to Think');
    Lesson l1_2 = Lesson(
        id: 'l1_2', title: 'The 4 qualities that defines Critical Thinking');
    Lesson l1_3 =
        Lesson(id: 'l1_3', title: 'Critical Thinking is highly valuable');
    Lesson l1_4 =
        Lesson(id: 'l1_4', title: 'Critical Thinking is rare and hard');
    Lesson l1_5 = Lesson(id: 'l1_5', title: 'Critical Thinking in action');
    chap1.addLessons([l1_1, l1_2, l1_3, l1_4, l1_5]);

    Chapter chap2 = Chapter(title: 'Proactive and Holistic', id: 'ct2');
    Chapter chap3 = Chapter(title: 'Objective', id: 'ct3');
    Chapter chap4 = Chapter(title: 'Rational', id: 'ct4');
    courseCriticalThinking.addChapters([chap1, chap2, chap3, chap4]);

    _learningSession = LearningSession();
    _learningSession.currentLesson = l1_1;

    kLogger.d(
        'Finished Creating Dump Data. Set currentLesson to ${_learningSession.currentLesson}');
  }
}
