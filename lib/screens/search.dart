import 'package:eventbooking_app/screens/scroll.dart';
import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({super.key});
  List<Scroll> scrollbox = [
    Scroll("1st  May- Sat -2:00 PM", "A Virtual evening of", "smooth jazz",
        "assets/images/flowers.png"),
    Scroll("1st  May- Sat -2:00 PM", "A Virtual evening of", "smooth jazz",
        "assets/images/violin.png"),
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
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 20),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  const Text(
                    "Search...",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w100),
                  ),
                  SizedBox(width: 125),
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
                          Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Filter",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ...scrollbox.map((e) {
                return Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Container(
                    height: 112,
                    width: 327,
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
                            SizedBox(height: 13),
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
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
