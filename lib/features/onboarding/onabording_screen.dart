import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_c19_str/core/app_colors.dart';
import 'package:islami_c19_str/features/home/home_screen.dart';

class OnabordingScreen extends StatelessWidget {
  static const String routeName = 'Onabording';
  OnabordingScreen({super.key});

  TextStyle actionsStyles = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xFF202020),
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        activeColor: AppColors.primaryColor,
      ),
      showDoneButton: true,
      done: Text("Done", style: actionsStyles),
      onDone: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          HomeScreen.routeName,
          (route) => false,
        );
      },

      showBackButton: true,
      back: Text("Back", style: actionsStyles),

      showNextButton: true,
      next: Text("Next", style: actionsStyles),

      showSkipButton: true,
      skip: Text("Skip", style: actionsStyles),
      onSkip: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          HomeScreen.routeName,
          (route) => false,
        );
      },

      globalHeader: Image.asset('assets/images/top_bar.png', width: 350),
      bodyPadding: EdgeInsets.only(top: 340),
      pages: [
        PageViewModel(
          decoration: getPageDecoration(),
          title: "",
          body: "Welcome To Islmi App",
          image: Image.asset('assets/images/intro1.png'),
        ),

        PageViewModel(
          decoration: getPageDecoration(),
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: Image.asset('assets/images/intro2.png'),
        ),
        PageViewModel(
          decoration: getPageDecoration(),
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: Image.asset('assets/images/intro3.png'),
        ),
        PageViewModel(
          decoration: getPageDecoration(),
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: Image.asset('assets/images/intro4.png'),
        ),
        PageViewModel(
          decoration: getPageDecoration(),
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: Image.asset('assets/images/intro5.png'),
        ),
      ],
    );
  }
}
