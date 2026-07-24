import 'package:flutter/material.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/hadeth_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
