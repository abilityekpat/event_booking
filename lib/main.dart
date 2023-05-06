import 'package:eventbooking_app/screens/event.dart';
import 'package:eventbooking_app/screens/event_details.dart';
import 'package:eventbooking_app/screens/home.dart';
import 'package:eventbooking_app/screens/my_profile.dart';
import 'package:eventbooking_app/screens/empty_notifications.dart';
import 'package:eventbooking_app/screens/notify.dart';

import 'package:eventbooking_app/screens/profile_about.dart';
import 'package:eventbooking_app/screens/reviews.dart';
import 'package:eventbooking_app/screens/see_all_event.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EventDetails(),
    );
  }
}
