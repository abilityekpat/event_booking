import 'package:eventbooking_app/screens/sideslide.dart';
import 'package:eventbooking_app/screens/slide.dart';
import 'package:eventbooking_app/screens/upcoming_event.dart';
import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'empty_notifications.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<SlideShow> slide = [
    SlideShow("Sport", "assets/images/sport.png", AppColors.primaryColor),
    SlideShow("Music", "assets/images/music.png", AppColors.accentOrange),
    SlideShow("Food", "assets/images/food.png", AppColors.accentGreen),
    SlideShow("Sport", "assets/images/sport.png", AppColors.accentBlue),
  ];

  List<Event> upcoming = [
    Event("International Band Mu...", "36 Guild Street London, UK "),
    Event("Jo Malone London’s Mo..", "Radius Gallery • Santa Cruz, CA"),
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideSlide(),
      key: _key,
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional(4, 1.2), children: [
              Container(
                padding: EdgeInsets.zero,
                height: 210,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 59, 48, 224),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 60, left: 10, right: 20),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.sort,
                              size: 40,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _key.currentState!.openDrawer();
                            },
                          ),
                          SizedBox(width: 75),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Current Location",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const Text(
                                "New York, USA",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 70),
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(247, 94, 96, 221),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const EmptyNotification()),
                                    );
                                  },
                                  icon: Icon(Icons.notifications_outlined))
                              // Icon(
                              //   Icons.notifications_outlined,
                              //   size: 25,
                              //   color: Colors.white,
                              // ),
                              )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          const Text(
                            "Search...",
                            style: TextStyle(
                              fontSize: 21,
                              color: Color.fromARGB(247, 94, 96, 221),
                            ),
                          ),
                          SizedBox(width: 130),
                          Container(
                              height: 32.14,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(247, 94, 96, 221),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: const [
                                    Icon(Icons.filter_list),
                                    SizedBox(width: 5),
                                    Text("Filter")
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...slide.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 42.0,
                          width: 106.77,
                          decoration: BoxDecoration(
                            color: e.bgColour,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                e.image,
                                scale: 0.8,
                              ),
                              SizedBox(width: 5),
                              Text(
                                e.name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              )
            ]),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Upcoming Event",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 130),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...upcoming.map((e) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 255,
                                  width: 237,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Image.asset(
                                                "assets/images/flower.png"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Container(
                                              height: 55,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    150, 255, 255, 255),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: AppColors
                                                            .accentColor),
                                                  ),
                                                  Text(
                                                    "JUNE",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: AppColors
                                                            .accentColor),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 170, top: 20),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: const Icon(
                                                Icons.bookmark,
                                                color: AppColors.accentColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "International Band Mu...",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Stack(
                                          children: [
                                            Image.asset(
                                                "assets/images/ovalimage1.png"),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Image.asset(
                                                  "assets/images/ovalimage2.png"),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: Image.asset(
                                                  "assets/images/ovalimage3.png"),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 85, top: 10),
                                              child: Text(
                                                "+20 Going",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Icon(
                                              Icons.location_on,
                                              color: Color.fromARGB(
                                                  255, 170, 168, 168),
                                            ),
                                          ),
                                          Text(
                                            "36 Guild Street London, UK",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 170, 168, 168)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                height: 137,
                width: 358,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 175, 249, 253),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Invite your friends",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          const Text(
                            "Get \$20 for ticket",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 32,
                            width: 72,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.lightgreen,
                            ),
                            child: const Center(
                              child: Text(
                                "INVITE",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/congrat.png",
                      height: 200,
                      width: 160,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: const [
                  Text(
                    "Nearby You",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 175),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
