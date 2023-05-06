import 'package:eventbooking_app/screens/background_image.dart';
import 'package:flutter/material.dart';
// import '..widgets/widgets.dart';

class ViewMap extends StatelessWidget {
  const ViewMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          body: SafeArea(
            child: Column(
              children: [],
            ),
          ),
        )
      ],
    );
  }
}
