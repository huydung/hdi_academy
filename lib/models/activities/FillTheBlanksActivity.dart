import 'package:hdi_academy/models/activities/LearningActivity.dart';

//Example JSON


class FillTheBlankActivity extends LearningActivity {
  String pattern =

  @override
  String toJSON() {}

  @override
  FillTheBlankActivity.fromJSON(String json) : super.fromJSON(json) {
    type = ActivityType.FILL_IN_BLANK;

  }
}
