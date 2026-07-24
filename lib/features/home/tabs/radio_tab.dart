import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/radio_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
