import 'package:eventbooking_app/screens/rock_review.dart';
import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Reviews extends StatelessWidget {
  Reviews({super.key});
  List<Rocks> rock = [
    Rocks("Rocks Velkeinjen", "10 Feb"),
    Rocks("Angelina Zolly", "10 Jun"),
    Rocks("Zenifero Bolex", "10 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              ...rock.map((e) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/rocksimage.png",
                            scale: 0.8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              e.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(e.date),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: AppColors.accentOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.accentOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.accentOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.accentOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.accentOrange,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 55, right: 5),
                        child: Text(
                          "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
                          style: TextStyle(fontSize: 15, height: 1.5),
                        ),
                      )
                    ],
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
