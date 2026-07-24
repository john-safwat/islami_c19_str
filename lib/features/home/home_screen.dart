import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_c19_str/core/app_colors.dart';
import 'package:islami_c19_str/features/home/tabs/ahadeth_tab.dart';
import 'package:islami_c19_str/features/home/tabs/quran_tab.dart';
import 'package:islami_c19_str/features/home/tabs/radio_tab.dart';
import 'package:islami_c19_str/features/home/tabs/sebha_tab.dart';
import 'package:islami_c19_str/features/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryColor,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: AppColors.secondaryColor,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg_images/ic_quran.svg",
              color: _selectedIndex == 0
                  ? Colors.white
                  : AppColors.secondaryColor,
            ),
            label: 'Quran',
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg_images/ic_sebha.svg",
              color: _selectedIndex == 1
                  ? Colors.white
                  : AppColors.secondaryColor,
            ),
            label: 'Sebha',
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg_images/ic_ahadeth.svg",
              color: _selectedIndex == 2
                  ? Colors.white
                  : AppColors.secondaryColor,
            ),
            label: 'Ahadeth',
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg_images/ic_radio.svg",
              color: _selectedIndex == 3
                  ? Colors.white
                  : AppColors.secondaryColor,
            ),
            label: 'Radio',
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg_images/ic_time.svg",
              color: _selectedIndex == 4
                  ? Colors.white
                  : AppColors.secondaryColor,
            ),
            label: 'Time',
            backgroundColor: AppColors.primaryColor,
          ),
        ],
      ),

      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          tabs[_selectedIndex],
          Image.asset("assets/images/top_bar.png", width: 300),
        ],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    AhadethTab(),
    RadioTab(),
    TimeTab(),
  ];
}
