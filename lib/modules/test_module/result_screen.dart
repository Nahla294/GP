import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/layout/HomePage.dart';
import 'package:graduation_project/modules/test_module/report_screen.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  final int score;
  // ignore: deprecated_member_use
  List ans = List(38);
  ResultScreen(this.score, this.ans, {Key key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int finalScore = 0;
  @override
  Widget build(BuildContext context) {
    finalScore = ((widget.score / 38) * 100).toInt();
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.sp),
        child: AppBar(
          // ignore: deprecated_member_use
          backwardsCompatibility: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
          automaticallyImplyLeading: false,
          title: Text(
            'Test Result',
            style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: const Color.fromRGBO(42, 65, 88, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.r),
              bottomLeft: Radius.circular(10.r),
            ),
          ),

          ////////////////////////////HOME BUTTON/////////////////////////////
          actions: [
            IconButton(
              color: Colors.white,
              iconSize: 35.sp,
              icon: const Icon(Icons.home_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0.h,
                ),
                Text(
                  'The result.....',
                  style: TextStyle(
                    fontSize: 40.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 80.0.h,
                ),
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(42, 65, 88, 1.0),
                  radius: 80.0.r,
                  child: Text(
                    ' ' "$finalScore" "%",
                    style: TextStyle(
                      fontSize: 50.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0.h,
                ),
                finalScore == 100
                    ? const Text(
                        "You don't have any type of color blindness",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    : const Text(
                        "You have a type of color blindness",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                SizedBox(
                  height: 80.0.h,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 300.r,
                  height: 60.r,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      side: BorderSide(
                        color: const Color.fromRGBO(42, 65, 88, 1.0),
                        width: 2.w,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0.w,
                      horizontal: 10.0.h,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ReportScreen(widget.score, widget.ans),
                        ),
                      );
                    },
                    child: Text(
                      'Recap your answer',
                      style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
