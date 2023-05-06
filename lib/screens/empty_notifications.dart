import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  // Icon(
                  //   Icons.arrow_back,
                  // ),
                  SizedBox(width: 5),
                  const Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 120),
            Image.asset("assets/images/artwork.png"),
            const Text(
              "No Notifications!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor",
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.5, fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
