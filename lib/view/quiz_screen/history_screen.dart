// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, curly_braces_in_flow_control_structures, prefer_conditional_assignment, avoid_print, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:quiz_app/controller/quiz_screen_controller.dart';
import 'package:quiz_app/core/constants/color_constants.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswersCount = 0;
  int wrongAnswersCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.darkGrey),
                child: Text(
                  QuizScreenController
                      .historyQuestions[currentQuestionIndex].question,
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: List.generate(
                    QuizScreenController.historyQuestions[currentQuestionIndex]
                        .optionsList.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;

                              if (selectedAnswerIndex ==
                                  QuizScreenController
                                      .historyQuestions[currentQuestionIndex]
                                      .correctAnswerIndex) {
                                rightAnswersCount++;
                              } else {
                                wrongAnswersCount++;
                              }
                              print(rightAnswersCount);
                            }
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: buildColor(index),
                                  ),
                                  // (index ==
                                  //             HomeScreenController
                                  //                 .flutterQuestions[
                                  //                     currentQuestionIndex]
                                  //                 .correctAnswerIndex &&
                                  //         selectedAnswerIndex != null)
                                  //     ? Colors.green
                                  //     : selectedAnswerIndex == index
                                  //         ? selectedAnswerIndex ==
                                  //                 HomeScreenController
                                  //                     .flutterQuestions[
                                  //                         currentQuestionIndex]
                                  //                     .correctAnswerIndex
                                  //             ? Colors.green
                                  //             : Colors.red
                                  //         : ColorConstants.primaryGrey),

                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    QuizScreenController
                                        .historyQuestions[currentQuestionIndex]
                                        .optionsList[index],
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontSize: 18),
                                  ),
                                  Icon(
                                    buildIcons(
                                      index,
                                    ),
                                    color: buildColor(index),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  if (currentQuestionIndex <
                      QuizScreenController.historyQuestions.length - 1) {
                    currentQuestionIndex++;
                    selectedAnswerIndex = null;

                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            rightAnswerCount: rightAnswersCount,
                            wrongAnswerCount: wrongAnswersCount,
                          ),
                        ));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstants.primaryBlue),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// build color
  Color buildColor(int index) {
    if (index ==
            QuizScreenController
                .historyQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      // to shoe right answer if selected is not null
      return Colors.green;
    } else if (index == selectedAnswerIndex) {
      // to show whether the selected answer is right or wrong
      if (selectedAnswerIndex ==
          QuizScreenController
              .historyQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      // to show the default color as grey
      return ColorConstants.primaryGrey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            QuizScreenController
                .historyQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex !=
          QuizScreenController
              .historyQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
