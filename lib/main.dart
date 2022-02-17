import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/layout/HomePage.dart';
import 'package:graduation_project/modules/about_module/About.dart';
import 'package:graduation_project/modules/chatbot_module/ChatBot.dart';
import 'package:graduation_project/modules/colorMatch_module/colorsCsvFile.dart';
import 'modules/test_module/test_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return ScreenUtilInit(
      designSize: const Size(400, 650),
      builder: () => MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          // This is the theme of your application.
          //primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
