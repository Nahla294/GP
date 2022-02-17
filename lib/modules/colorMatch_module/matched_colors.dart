import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/layout/HomePage.dart';
import 'package:graduation_project/shared/components/componenets.dart';
import 'colorsCsvFile.dart';

class matched_colors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.sp),
        child: AppBar(
          // ignore: deprecated_member_use
          backwardsCompatibility: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),

          backgroundColor: const Color.fromRGBO(42, 65, 88, 1.0),
          title: Text(
            '$colorName',
            style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.r),
              bottomLeft: Radius.circular(10.r),
            ),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 30.sp,
              onPressed: () {
                visibleMatchedButton = true;
                matched.clear();
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          actions: [
            Padding(
              padding: EdgeInsets.all(5.0.sp),
              child: IconButton(
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
              ),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        itemBuilder: (
          context,
          int index,
        ) =>
            colorList(matched[index], context),
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: 20.0.sp),
          child: Container(
            width: double.infinity.w,
            height: 1.0.h,
            color: Colors.grey[300],
          ),
        ),
        itemCount: matched.length,
      ),
    );
  }
}
