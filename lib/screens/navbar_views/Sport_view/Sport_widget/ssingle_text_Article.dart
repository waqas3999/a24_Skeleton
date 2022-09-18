import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/single_text_article.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class SSingleTextArticle extends StatelessWidget {
  SSingleTextArticle({Key? key}) : super(key: key);
  final singletexmodel = SSingletextArticle.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: singletexmodel.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      singletexmodel[index].date,
                      style: txtfield_menu,
                      textAlign: TextAlign.right,
                    ),
                    Spacer(),
                    Text(
                      singletexmodel[index].title,
                      style: red_text,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  singletexmodel[index].text,
                  style: ssingle_text,
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: List.generate(
                      150 ~/ 2,
                      (index) => Expanded(
                            child: Container(
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : app_menu_textcolor,
                              height: 0.5,
                            ),
                          )),
                )
                /*SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                        const SizedBox(
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
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "مون ساعات",
                          style: message_text,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Image.asset(
                          "images/clock.png",
                          color: app_menu_textcolor,
                          width: 9,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/24h.PNG",
                          width: 30,
                        ),
                      ],
                    ),
                    // Divider(height: 0.5, color: app_menu_textcolor)
                    Row(
                      children: List.generate(
                          150 ~/ 2,
                          (index) => Expanded(
                                child: Container(
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : app_menu_textcolor,
                                  height: 0.5,
                                ),
                              )),
                    )
                  ]),
                )*/
              ]));
        });
  }
}
