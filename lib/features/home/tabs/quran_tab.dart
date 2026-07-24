import 'package:flutter/material.dart';
import 'package:islami_c19_str/core/app_colors.dart';
import 'package:islami_c19_str/features/home/models/sura_item_model.dart';
import 'package:islami_c19_str/features/home/models/suras_data.dart';
import 'package:islami_c19_str/features/home/widgets/most_recent_item.dart';
import 'package:islami_c19_str/features/home/widgets/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/quran_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 180),
              TextField(
                style: TextStyle(color: AppColors.primaryColor),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: AppColors.primaryColor),
                  prefixIcon: Icon(Icons.search, color: AppColors.primaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Most Recent',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 170,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MostRecentItem(
                      suraItemModel: SuraItemModel(
                        nameArabic: arabicQuranSuras[50],
                        nameEnglish: englishQuranSuras[50],
                        verseCount: int.parse(AyaNumber[50]),
                        index: 50,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Suras List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 45,
                    endIndent: 45,
                  ),
                  itemCount: 114,
                  itemBuilder: (context, index) {
                    return SuraItem(
                      suraItemModel: SuraItemModel(
                        nameArabic: arabicQuranSuras[index],
                        nameEnglish: englishQuranSuras[index],
                        verseCount: int.parse(AyaNumber[index]),
                        index: index + 1,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
