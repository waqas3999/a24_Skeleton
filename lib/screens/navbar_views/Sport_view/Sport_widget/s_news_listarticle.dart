import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/news_list.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class SNewslist extends StatelessWidget {
  /*final String title;
  final String new_images;
  */
  SNewslist({
    Key? key,
    /* required this.title, required this.new_images,*/
  }) : super(key: key);
  final news = SNewslist_model.fetchAll();
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
            child: Stack(children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.16,
                          alignment: Alignment.centerRight,
                          child: Text(news[index].title,
                              style: bottom_textStyle,
                              textAlign: TextAlign.right)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          color: app_Bluecolor,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(news[index].new_images),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 2.5,
                          ),
                          Text(
                            "13",
                            style: message_text,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.messenger,
                            size: 10,
                            color: app_menu_textcolor,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "2,986",
                        style: message_text,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/glasses.png",
                        color: app_menu_textcolor,
                        width: 18,
                      )
                    ],
                  ),
                  Divider(
                    height: 0.5,
                    color: app_menu_textcolor,
                  )
                ],
              ),
              Positioned(
                  top: 7,
                  child: Row(
                    ///   mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ImageIcon(
                        AssetImage(news[index].save),
                        size: 18,
                        color: app_menu_textcolor,
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(news[index].desc, style: red_text),
                    ],
                  )),
            ]),
          );
        });
  }
}
