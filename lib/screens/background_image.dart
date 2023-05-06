import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/map.png"),
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(
          //     Color.fromARGB(255, 207, 201, 201), BlendMode.lighten),
        ),
      ),
    );
  }
}
