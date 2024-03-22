// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:quiz_app/view/quiz_screen/chemistry_screen.dart';
import 'package:quiz_app/view/quiz_screen/history_screen.dart';
import 'package:quiz_app/view/quiz_screen/math_screen.dart';
import 'package:quiz_app/core/constants/color_constants.dart';

import 'package:quiz_app/view/result_screen/sports_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryBlack,
        leadingWidth: 300,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Mathews",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorConstants.primaryWhite),
              ),
              Text(
                "Lets make this day more Productive",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primaryWhite),
              )
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=600"),
            radius: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.primaryGrey.withOpacity(.3)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Choose a category",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primaryWhite,
                      fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lets Play",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.primaryWhite,
                  fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Sports
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SportsScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorConstants.primaryGrey.withOpacity(.3)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg?auto=compress&cs=tinysrgb&w=600",
                            scale: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sports",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryWhite,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5 Questions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryGrey,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Chemistry
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChemistryScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorConstants.primaryGrey.withOpacity(.3)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://media.istockphoto.com/id/658148844/photo/laboratory-research.jpg?b=1&s=612x612&w=0&k=20&c=XWqgsjqM6GAdbaf0vA0BGBcEUsJ2fMQxwn-aVm91THY=",
                            scale: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Chemistry",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryWhite,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5 Questions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryGrey,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Math

                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MathScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorConstants.primaryGrey.withOpacity(.3)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://images.pexels.com/photos/3729557/pexels-photo-3729557.jpeg?auto=compress&cs=tinysrgb&w=600",
                            scale: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Math",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryWhite,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5 Questions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryGrey,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // History
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoryScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorConstants.primaryGrey.withOpacity(.3)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://images.pexels.com/photos/36006/renaissance-schallaburg-figures-facade.jpg?auto=compress&cs=tinysrgb&w=600",
                            scale: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "History",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryWhite,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5 Questions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryGrey,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
