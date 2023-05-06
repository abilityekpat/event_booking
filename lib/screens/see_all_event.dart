import 'package:eventbooking_app/screens/scroll.dart';
import 'package:flutter/material.dart';

import '../util/constants/colors.dart';

class SeeAll extends StatelessWidget {
  SeeAll({super.key});
  List<Scroll> scrollbox = [
    Scroll("1st  May- Sat -2:00 PM", "A Virtual evening of", "smooth jazz",
        "assets/images/flowers.png"),
    Scroll(
      "1st  May- Sat -2:00 PM",
      "A Virtual evening of",
      "smooth jazz",
      "assets/images/violin.png",
    ),
    Scroll("1st  May- Sat -2:00 PM", "A Virtual evening of", "smooth jazz",
        "assets/images/woman.png"),
    Scroll("1st  May- Sat -2:00 PM", "A Virtual evening of", "smooth jazz",
        "assets/images/kid.png"),
    Scroll("1st  May- Sat -2:00 PM", "A Virtual evening of", "smooth jazz",
        "assets/images/gala.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Column(children: [
            Row(
              children: const [
                Icon(Icons.arrow_back),
                SizedBox(width: 20),
                Text(
                  "Events",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 180),
                Icon(
                  Icons.search,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 20),
            ...scrollbox.map((e) {
              return Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 112,
                  width: 337,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        e.image,
                        scale: 0.8,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              e.date,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e.firstname,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e.lastname,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.room,
                                color: Color.fromARGB(255, 204, 203, 203),
                              ),
                              Text(
                                e.adddress,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ]),
        ),
      ),
    );
  }
}
