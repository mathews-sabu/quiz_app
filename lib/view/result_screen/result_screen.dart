// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:quiz_app/core/constants/color_constants.dart';
import 'package:quiz_app/view/category_screen/category_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.rightAnswerCount,
      required this.wrongAnswerCount});
  final int rightAnswerCount;
  final int wrongAnswerCount;

  @override
  Widget build(BuildContext context) {
    final percentage = (rightAnswerCount / 5) * 100;
    int skippedAnswerCount = 5 - (rightAnswerCount + wrongAnswerCount);
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Congrats!",
              style: TextStyle(color: Colors.red, fontSize: 45),
            ),
            Text(
              "Your score is ${percentage.round()} %",
              style: TextStyle(color: Colors.green, fontSize: 45),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Correct Answers: $rightAnswerCount ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Wrong Answers: $wrongAnswerCount ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Skipped Questions: $skippedAnswerCount ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryScreen(),
                            ));
                      },
                      child: Text(
                        "Restart",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
