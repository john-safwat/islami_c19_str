
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c19_str/core/app_colors.dart';
import 'package:islami_c19_str/features/home/models/sura_item_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  SuraItemModel suraItemModel;
  SuraDetailsScreen({required this.suraItemModel , super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  String? suraContent;

  @override
  Widget build(BuildContext context) {
    loadSuraContent();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        foregroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(widget.suraItemModel.nameEnglish),
      ),
      backgroundColor: AppColors.secondaryColor,
      body: suraContent == null? Center(
        child: CircularProgressIndicator(),
      ): Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Image.asset("assets/images/img_left_corner.png"),
                Expanded(child: Text(widget.suraItemModel.nameArabic , style: TextStyle(fontSize: 20 , color: AppColors.primaryColor),textAlign: TextAlign.center,)),
                Image.asset("assets/images/img_right_corner.png"),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(suraContent! , style: TextStyle(
                  fontSize: 16 , color: AppColors.primaryColor
                ),textAlign:  TextAlign.center,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadSuraContent() async {
    String suraContentString = await rootBundle.loadString("assets/files/${widget.suraItemModel.index}.txt");

    List<String> suraVerses = suraContentString.trim().split("\n");

    suraContent = "";
    for(int i = 0; i< suraVerses.length ; i++){
      suraContent = "$suraContent ${suraVerses[i].trim()} [${i+1}]";
    }
    suraContent!.trim();
    setState(() {

    });
  }
}
