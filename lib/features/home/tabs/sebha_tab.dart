import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/sebha_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
