//enum ActivityType { FILL_IN_BLANK, SINGLE_CHOICE, TRUE_FALSE, VIDEO }
//https://medium.com/@ra9r/overcoming-the-limitations-of-dart-enum-8866df8a1c47

import 'package:hdi_academy/models/Lesson.dart';

class ActivityType {
  final String _value;
  const ActivityType._(this._value);

  String explain() {
    return _value;
  }

  factory ActivityType.fromString(String type) {
    switch (type) {
      case 'FILL_IN_BLANK':
        return ActivityType.FILL_IN_BLANK;
      case 'SINGLE_CHOICE':
        return ActivityType.SINGLE_CHOICE;
      case 'TRUE_FALSE':
        return ActivityType.TRUE_FALSE;
      case 'VIDEO':
        return ActivityType.VIDEO;
    }
    throw FormatException('Can not parse activitytype from $type');
  }

  static const ActivityType FILL_IN_BLANK =
      ActivityType._('Select an option to fill in box :num:');
  static const ActivityType SINGLE_CHOICE =
      ActivityType._('Pick the correct answer');
  static const ActivityType TRUE_FALSE =
      ActivityType._('Select :num: correct options');
  static const ActivityType VIDEO = ActivityType._('Watch the video in full');
}

abstract class LearningActivity {
  String id;
  ActivityType type;
  String mediaURL;
  String instructionalText;
  Lesson lesson;

  String toJSON();
  LearningActivity.fromJSON(String json);
}
