import 'package:eventbooking_app/screens/my_profile.dart';
import 'package:eventbooking_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class SideSlide extends StatelessWidget {
  const SideSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: DrawerHeader(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    "assets/images/ashkaf.png",
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Ashfak Sayem",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: const Icon(
              Icons.person_3_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: const Text(
              "My Profile",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfile()),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.message_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Message",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.calendar_month_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Calender",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.message_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Bookmark",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.contact_emergency_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.help_center_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Helps & FAQs",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Icon(
              Icons.logout_outlined,
              size: 30,
              color: Colors.grey,
            ),
            title: Text(
              "Sign Out",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
