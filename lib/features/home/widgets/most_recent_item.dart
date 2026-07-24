import 'package:flutter/material.dart';
import 'package:islami_c19_str/core/app_colors.dart';
import 'package:islami_c19_str/features/home/models/sura_item_model.dart';

class MostRecentItem extends StatelessWidget {
  SuraItemModel suraItemModel;
  MostRecentItem({super.key, required this.suraItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(suraItemModel.nameArabic, style: TextStyle(fontSize: 24)),
              Text(suraItemModel.nameEnglish, style: TextStyle(fontSize: 24)),
              Text(
                "${suraItemModel.verseCount} Verses",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          Image.asset("assets/images/img_most_recent.png"),
        ],
      ),
    );
  }
}
