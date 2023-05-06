import 'package:eventbooking_app/screens/about.dart';
import 'package:eventbooking_app/screens/empty_event.dart';
import 'package:eventbooking_app/screens/event.dart';
import 'package:eventbooking_app/screens/reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../util/constants/colors.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 20),
                    Text(
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
                    "David  Silbia",
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text("Followers"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 154,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.person_add,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Follow",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
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
                              Icons.chat,
                              size: 20,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Messages",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const TabBar(
                  indicatorColor: AppColors.primaryColor,
                  labelColor: AppColors.primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "ABOUT",
                    ),
                    Tab(
                      text: "EVENT",
                    ),
                    Tab(
                      text: "REVIEWS",
                    ),
                  ],
                ),
                SizedBox(
                  height: 800,
                  child: TabBarView(
                    children: [
                      About(),
                      Event(),
                      Reviews(),
                    ],
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
