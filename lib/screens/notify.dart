import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "David Silbia Invite Jo Malone\nLondon’s Mother’s,",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Text("just now"),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 36,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: const Center(child: Text("Reject")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 36,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.primaryColor,
                    ),
                    child: const Center(
                        child: Text(
                      "Accept",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo2.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Adnan Safi  Started\nfollowing you",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 100),
                Text("5 min ago"),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo3.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Joan Baker Invite A virtual\nEvening of Smooth Jazz",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Text("20 min ago"),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 36,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: const Center(child: Text("Reject")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 36,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.primaryColor,
                    ),
                    child: const Center(
                        child: Text(
                      "Accept",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo4.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Ronald C. Kinch Like you\nevents",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 80),
                Text("1 hr ago"),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo5.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Clara TolsonnJoin your\nEvent Gala Music Festival",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 70),
                Text("9 hr ago"),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo6.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Jennifer Fritz Invite you\nInternational Kids Safe ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 60),
                Text("Tue,5:10 pm"),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 36,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: const Center(child: Text("Reject")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 36,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.primaryColor,
                    ),
                    child: const Center(
                        child: Text(
                      "Accept",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/photo3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Eric G. Prickett Started\nfollowing you",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 60),
                Text("Wed,3:30 pm"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
