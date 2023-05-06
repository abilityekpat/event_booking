import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            children: [
              Image.asset("assets/images/onboarding_1.png"),
              Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(247, 77, 51, 246),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                ),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 40, right: 40),
                      child: Text(
                        "Explore Upcoming and Nearby Events",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            wordSpacing: 2,
                            height: 1.5),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        "In publishing and graphic design, Lorem is a placeholder text commonly",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            wordSpacing: 2,
                            height: 1.5),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
