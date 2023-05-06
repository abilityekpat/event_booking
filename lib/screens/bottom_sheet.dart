import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:eventbooking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

invite(context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 800,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Invite Friend",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: Color.fromARGB(255, 215, 211, 211),
                            width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 184, 179, 179)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.search,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset("assets/images/photo2.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Alex Lee",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset("assets/images/photo5.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Micheal Ulasi",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset("assets/images/photo3.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Cristofer",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset("assets/images/photo4.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "David  Silbia",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset("assets/images/photo6.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Ashfak Sayem",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset("assets/images/photo4.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Cristofer Nolan ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset("assets/images/photo1.png", scale: 0.8),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Roman Kutepov",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("2k Follwers")
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ]),
              const Padding(
                padding: EdgeInsets.only(left: 35, right: 25, bottom: 40),
                child: CustomButton(buttonText: "INVITE"),
              )
            ],
          ),
        ),
      );
    },
  );
}
