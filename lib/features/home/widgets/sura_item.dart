import 'package:flutter/material.dart';
import 'package:islami_c19_str/features/home/models/sura_item_model.dart';
import 'package:islami_c19_str/features/sura_details/sura_details_screen.dart';

class SuraItem extends StatelessWidget {
  SuraItemModel suraItemModel;
  SuraItem({super.key, required this.suraItemModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName , arguments:  suraItemModel);
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/img_sur_number_frame.png",
                width: 52,
                height: 52,
              ),
              Text(
                "${suraItemModel.index}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraItemModel.nameEnglish,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${suraItemModel.verseCount} verses",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraItemModel.nameArabic,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
