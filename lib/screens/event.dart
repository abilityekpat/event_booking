import 'package:eventbooking_app/screens/scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../util/constants/colors.dart';

class Event extends StatelessWidget {
  Event({super.key});
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
      body: SingleChildScrollView(
        child: Column(children: [
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
          }),
        ]),
      ),
    );
  }
}
