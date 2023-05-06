import 'package:eventbooking_app/screens/bottom_sheet.dart';
import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:eventbooking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            alignment: Alignment(0, 1.3),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/backimage.png"),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 295,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/ovalimage1.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset("assets/images/ovalimage2.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/ovalimage3.png"),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 85, top: 10),
                            child: Text(
                              "+20 Going",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 28,
                      width: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                          child: GestureDetector(
                        onTap: () {
                          invite(context);
                        },
                        child: const Text(
                          "Invite",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                const Text(
                  "International Band Music Concert",
                  style: TextStyle(fontSize: 35, height: 1.4),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 213, 217, 247),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.calendar_month,
                        size: 40,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "14 December, 2021",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 15),
                          child: Text(
                            "Tuesday, 4:00PM - 9:00PM",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 213, 217, 247),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.location_on,
                        size: 40,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Gala Convention Center",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 15),
                          child: Text(
                            "36 Guild Street London, UK ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/face.png",
                      scale: 0.8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Ashfak Sayem",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Organizer",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 85),
                    Container(
                      height: 38,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 213, 217, 247),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "About Event",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(alignment: Alignment.topCenter, children: [
              const Text(
                "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...",
                style: TextStyle(fontSize: 16, height: 1.3),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset("assets/images/Rectangle.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CustomButton(buttonText: "BUY TICKET \$120"),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
