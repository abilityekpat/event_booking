import 'package:eventbooking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  Verification({super.key});
  final pinController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 55,
    height: 55,
    margin: EdgeInsets.all(10),
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(height: 20),
              const Text(
                "Verification",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "We’ve send you the verification code on +1 2620 0323 7631",
                  style: TextStyle(fontSize: 15, height: 1.5),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Pinput(
                  controller: pinController,
                  length: 4,
                  toolbarEnabled: false,
                  defaultPinTheme: defaultPinTheme,
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: CustomButton(buttonText: "CONTINUE"),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Re-send code in",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "0:20",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 60, 53, 203),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
