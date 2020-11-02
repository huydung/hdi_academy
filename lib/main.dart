import 'package:flutter/material.dart';
import 'package:hdi_academy/models/LearningSession.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'screens/PageViewLesson.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<LearningSession>(create: (_) => LearningSession()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HDI Academy',
      theme: ThemeData(
        //primarySwatch: kHDIPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        backgroundColor: kHDIBGColor,
        canvasColor: Colors.blueGrey[900],
        accentColor: kHDIPrimaryColor,
        primaryColor: kHDIBGColor,
      ),
      initialRoute: Routes.LESSON,
      routes: {
        Routes.LESSON: (context) => PageViewLesson(),
      },
    );
  }
}
