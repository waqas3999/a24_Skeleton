import 'package:a24_skeleton/screens/base_landing/model/article_list_model.dart';
import 'package:a24_skeleton/screens/searching.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  /* String? article;
  String? detail;*/
  ArticleList({
    Key? key,
    /*this.article,  this.detail*/
  }) : super(key: key);
  final article_model = ArticleList_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: article_model.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Searching()));
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            article_model[index].article?.toString() ?? "",
                            style: home_heading1,
                            textAlign: TextAlign.right,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          article_model[index].detail?.toString() ?? "",
                          style: home_heading2,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "13",
                                style: message_text,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.messenger,
                                  size: 16,
                                  color: app_menu_textcolor,
                                ),
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
                              GestureDetector(
                                onTap: () {},
                                child: SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: Image.asset(
                                      "images/glasses.png",
                                      color: app_menu_textcolor,
                                    )),
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
                              SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: Image.asset(
                                    "images/clock.png",
                                    color: app_menu_textcolor,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "images/24h.PNG",
                                scale: 1.1,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(height: 0.5, color: app_menu_textcolor)
                        ]),
                      )
                    ])),
          );
        });
  }
}
