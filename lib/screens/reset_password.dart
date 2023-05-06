import 'package:eventbooking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  "Reset Password",
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
                    "Please enter your email address to request a password reset",
                    style: TextStyle(fontSize: 15, height: 1.5),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "abc@email.com",
                    contentPadding: EdgeInsets.all(6),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(child: CustomButton(buttonText: "SEND"))
              ],
            )),
      ),
    );
  }
}
