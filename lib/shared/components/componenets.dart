import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Answer({
  //chatbot answer shape
  @required String message,
}) =>
    Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/55442f2018fd5e2781c732f90f1f7756.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(17.0),
                color: Color.fromRGBO(115, 147, 179, 1.0),
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                          child: Container(
                        constraints: BoxConstraints(maxWidth: 250),
                        child: Text(
                          message,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ))
                    ],
                  ),
                )),
          ),
        ],
      ),
    );

Widget send({
  //chatbot question shape
  @required String message,
  @required Function function,
}) =>
    Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(17.0),
                color: Color.fromRGBO(112, 128, 144, 1.0),
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                          child: Container(
                        constraints: BoxConstraints(maxWidth: 250),
                        child: Container(
                          height: 28.0,
                          child: MaterialButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 2.0),
                              // minWidth: double.infinity,
                              onPressed: function,
                              child: Text(
                                message,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        ),
                      ))
                    ],
                  ),
                )),
          ),
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilepic.png"),
            ),
          ),
        ],
      ),
    );

Widget about({
  //about shape
  String data,
  double result,
  double text_size,
}) =>
    Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 80.0,
          horizontal: 40.0,
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Text(
                    '${data}',
                    style: TextStyle(
                      fontSize: text_size,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color.fromRGBO(115, 147, 179, 0.05),
            border: Border.all(color: Colors.grey.withOpacity(0.08)),
          ),
        ),
      ),
    );

// buttons for test

Widget AnswerButton({
  double width = double.infinity,
  Color background = Colors.grey,
  Function function,
  String text,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: () {
          function;
        },
        child: Text(
          text,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        color: background,
      ),
    );

Widget ShowResultButton({
  Function function,
}) =>
    Container(
      width: 150.0,
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          function;
        },
        child: Text(
          'Show Result',
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: Colors.grey,
      ),
    );

Widget buildReport(
  String image,
  String textAnswer,
  String textNormal,
  String textBlind,
) =>
    Row(
      children: [
        Container(
          width: 120.0,
          height: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(
                image,
                //questions[index].image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Container(
            height: 170.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    textAnswer,
                    //'Your answer : ' + ans[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    textNormal,
                    //'Normal view : ' +
                    //    questions[index].answer.keys.firstWhere(
                    //        (k) =>
                    //            questions[index].answer[k].toString() == 'true',
                    //        orElse: () => null),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    maxLines: 3,
                  ),
                ),
                Expanded(
                  child: Text(
                    textBlind,
                    //'Color blindness : ' + questions[index].colorBlind,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget DividerReport() => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );
