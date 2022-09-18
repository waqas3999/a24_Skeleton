import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/base_landing/model/news_list.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Newslist extends StatelessWidget {
  /*final String title;
  final String new_images;
  */
  Newslist({
    Key? key,
    /* required this.title, required this.new_images,*/
  }) : super(key: key);
  final news = Newslist_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: news.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const BaseLandiing()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 0.5, color: app_menu_textcolor))),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(news[index].title,
                              style: heading2, textAlign: TextAlign.right)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                        color: app_Bluecolor,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(news[index].new_images.toString()),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
          );
        });
  }
}
