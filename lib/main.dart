import 'package:flutter/material.dart';
import 'package:hdi_academy/managers/DataManager.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'screens/PageViewLesson.dart';

void main() {
  //DataManager.instance.createDumpData();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => DataManager.instance.learningSession,
        lazy: false,
      ),
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
        accentColor: kHDIPrimaryColor,
        primaryColor: kHDIBGColor,
        buttonColor: kHDIColorWhite,
      ),
      initialRoute: Routes.LESSON,
      routes: {
        Routes.LESSON: (context) => PageViewLesson(),
      },
    );
  }
}
