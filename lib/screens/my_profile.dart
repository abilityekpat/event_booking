import 'dart:math';

import 'package:eventbooking_app/util/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 70),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              // Icon(
              //   Icons.arrow_back,
              // ),
              SizedBox(width: 5),
              const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/davidimage.png"),
              radius: 50,
            ),
          ),
          SizedBox(height: 10),
          const Center(
            child: Text(
              "Ashfak Sayem",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    "350",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text("Following")
                ],
              ),
              SizedBox(width: 30),
              Container(
                height: 40,
                width: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 30),
              Column(
                children: const [
                  Text(
                    "346",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text("Followers"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              height: 50,
              width: 154,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.edit_note_outlined,
                    size: 30,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "About Me",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Interest",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 180),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 28,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromARGB(255, 212, 215, 242),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.edit,
                        size: 15,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "CHANGE",
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: 116,
                  height: 31,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Game Online",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Container(
                width: 81,
                height: 31,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Center(
                  child: Text(
                    "Concert",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Container(
                width: 66,
                height: 31,
                decoration: BoxDecoration(
                  color: AppColors.accentOrange,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Center(
                  child: Text(
                    "Music",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Container(
                width: 51,
                height: 31,
                decoration: BoxDecoration(
                  color: AppColors.accentOrange,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Center(
                  child: Text(
                    "Art",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: 67,
                  height: 31,
                  decoration: BoxDecoration(
                    color: AppColors.accentGreen,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Movie",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Container(
                width: 67,
                height: 31,
                decoration: BoxDecoration(
                  color: AppColors.lightgreen,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Center(
                  child: Text(
                    "Other",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
