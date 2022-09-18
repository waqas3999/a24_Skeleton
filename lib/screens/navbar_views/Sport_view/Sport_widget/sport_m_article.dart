import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/sportmain_article.dart';
import 'package:a24_skeleton/screens/searching.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Sport_m_Article extends StatelessWidget {
  Sport_m_Article({Key? key}) : super(key: key);
  final main_article = SportMainatricle_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: main_article.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Searching()));
              },
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: app_Bluecolor,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(
                            main_article[index].ar_image?.toString() ?? ""),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              main_article[index].article?.toString() ?? "",
                              style: home_heading1,
                              textAlign: TextAlign.right,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                              main_article[index].detail?.toString() ?? "",
                              style: home_heading2,
                              textAlign: TextAlign.right),
                        ),
                      ]),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(
                              AssetImage("images/bookmark.png"),
                              size: 14,
                              color: app_menu_textcolor,
                            ),
                            SizedBox(
                              width: 30,
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
                    Divider(height: 0.5, color: app_menu_textcolor)
                  ]),
                ),
              ]));
        });
  }
}
