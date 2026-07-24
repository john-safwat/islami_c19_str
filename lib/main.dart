import 'package:flutter/material.dart';
import 'package:islami_c19_str/features/home/home_screen.dart';
import 'package:islami_c19_str/features/home/models/sura_item_model.dart';
import 'package:islami_c19_str/features/onboarding/onabording_screen.dart';
import 'package:islami_c19_str/features/sura_details/sura_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnabordingScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        OnabordingScreen.routeName: (_) => OnabordingScreen(),
        SuraDetailsScreen.routeName : (context) {
          var sura = ModalRoute.of(context)?.settings.arguments as SuraItemModel;
          return SuraDetailsScreen(suraItemModel: sura);
        }
      },
    );
  }
}
