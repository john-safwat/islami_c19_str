import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c19_str/features/home/models/hadeth_item_model.dart';
import 'package:islami_c19_str/features/home/widgets/hadeth_item.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  void initState() {
    super.initState();
    loadAhadethContent();
  }

  List<HadethItemModel> hadethItems = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset("assets/images/hadeth_bg.png", fit: BoxFit.fill),
        ),
        Column(
          children: [
            SizedBox(height: 180),
            Expanded(
              child: hadethItems.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: CarouselSlider.builder(
                        itemCount: hadethItems.length,
                        options: CarouselOptions(
                          height: double.infinity,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder:
                            (
                              BuildContext context,
                              int itemIndex,
                              int pageViewIndex,
                            ) => HadethItem(hadethItemModel: hadethItems[itemIndex],),

                      ),
                  ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> loadAhadethContent() async {
    for (int i = 1; i <= 50; i++) {
      var content = await rootBundle.loadString("assets/files/h$i.txt");
      var splitContent = content.trim().split("\n");
      String title = splitContent.first;
      String body = splitContent.sublist(1, splitContent.length).join(" ");
      hadethItems.add(
        HadethItemModel(index: i, title: title, content: body),
      );
    }
    setState(() {});
  }
}
