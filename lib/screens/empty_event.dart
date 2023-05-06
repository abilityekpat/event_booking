import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:eventbooking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmptyEvent extends StatelessWidget {
  const EmptyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(children: [
            Row(
              children: const [
                Icon(Icons.arrow_back),
                SizedBox(width: 20),
                Text(
                  "Events",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 46,
              width: 295,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 232, 230, 230),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 36,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const Center(
                          child: Text(
                        "UPCOMING",
                        style: TextStyle(
                            fontSize: 15, color: AppColors.primaryColor),
                      )),
                    ),
                  ),
                  SizedBox(width: 20),
                  const Text(
                    "PAST EVENT",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 141, 136, 136),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              "assets/images/calendertime.png",
              scale: 0.8,
            ),
            const SizedBox(height: 20),
            const Text(
              "No Upcoming Event",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 130),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: CustomButton(buttonText: "EXPLORE EVENT"),
            )
          ]),
        ),
      ),
    );
  }
}
