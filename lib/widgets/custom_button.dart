import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  const CustomButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 70, right: 30),
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              buttonText,
              style: const TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 60, 53, 203),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
