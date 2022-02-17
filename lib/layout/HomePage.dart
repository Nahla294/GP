import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/modules/about_module/About.dart';
import 'package:graduation_project/modules/chatbot_module/ChatBot.dart';
import 'package:graduation_project/modules/colorMatch_module/colorsCsvFile.dart';
import 'package:graduation_project/modules/test_module/test_screen.dart';
import 'package:graduation_project/shared/components/componenets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 65, 88, 1.0),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0.sp),
        child: AppBar(
          backwardsCompatibility: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(42, 65, 88, 1.0),
          title: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0.w,
            ),
            child: Text(
              'Color Harmony',
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800.h,
          width: double.infinity.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 35.0.w,
                ),
                child: Text(
                  'Main Menu ',
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardMenu(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TestScreen(),
                        ),
                      );
                    },
                    title: 'Test',
                    icon:
                        'assets/home_images/Eye Outline With Spiral Center free vector icons designed by Freepik.png',
                  ),
                  CardMenu(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => colorsCsvFile(),
                          ),
                        );
                      },
                      title: 'Color Match',
                      icon: 'assets/home_images/color2.png')
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 25.0.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardMenu(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => About(),
                          ),
                        );
                      },
                      title: 'About us',
                      icon: 'assets/home_images/i 10.53.49 PM.png',
                    ),
                    CardMenu(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatBot(),
                          ),
                        );
                      },
                      title: 'ChatBot',
                      icon: 'assets/home_images/chatbot.png',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 100.sp,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 2.r,
                        blurRadius: 2.r,
                        offset: Offset(4.h, 5.w),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.0.r),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0.w,
                      ),
                      Image.asset(
                        'assets/home_images/a4.png',
                        width: 55.sp,
                        height: 55.sp,
                      ),
                      SizedBox(
                        width: 40.0.w,
                      ),
                      Text(
                        'Color Detection',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0.sp,
                          //fontFamily: 'valera',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
