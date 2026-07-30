import 'package:flutter/material.dart';
import 'package:islami_c19_str/core/app_colors.dart';
import 'package:islami_c19_str/features/home/models/hadeth_item_model.dart';

class HadethItem extends StatelessWidget {
  final HadethItemModel hadethItemModel;
  const HadethItem({required this.hadethItemModel , super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/HadithCardBackGround.png")),
        color: AppColors.primaryColor, 
        borderRadius: BorderRadius.circular(32)
      ),
      child: Column(
        children: [
          Row(children: [
            ImageIcon(AssetImage("assets/images/img_left_corner.png") , color: AppColors.secondaryColor, size: 64,),
            Expanded(
              child: Text(hadethItemModel.title , style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 20 ,
                  fontWeight: FontWeight.bold
              ),textAlign: TextAlign.center,),
            ),
            ImageIcon(AssetImage("assets/images/img_right_corner.png") , color: AppColors.secondaryColor, size: 64,),
          ],),
          SizedBox(height: 16,),
          Expanded(
            child: Text(hadethItemModel.content , style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 16 ,
                fontWeight: FontWeight.bold
            ),textAlign: .center,),
          )
        ],
      ),
    );
  }
}
