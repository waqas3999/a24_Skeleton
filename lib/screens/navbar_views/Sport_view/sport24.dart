import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/base_landing/model/weeklist_model.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/all_match_score_board.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/latest_race_vedio.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/latest_sport_vedio.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/s_news_listarticle.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/sport_m_article.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/ssingle_text_Article.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/svedio_list.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/Sport_widget/top_sport_newsvedio.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/carousal_model_sport.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/carousal_model_sport2.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/turk_slider_model.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/footballmatch_list.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sport24 extends StatefulWidget {
  const Sport24({Key? key}) : super(key: key);

  @override
  State<Sport24> createState() => _Sport24State();
}

class _Sport24State extends State<Sport24> with TickerProviderStateMixin {
  late TabController _tabController3;
  late TabController _tabController5;
  bool selected_text = false;
  int navigationId = 1;
  @override
  void initState() {
    _tabController3 = TabController(length: 2, vsync: this, initialIndex: 1);
    _tabController5 = TabController(
        length: Akhbar.missthis.length, vsync: this, initialIndex: 4);

    super.initState();
  }

  @override
  void dispose() {
    _tabController3.dispose();
    _tabController5.dispose();
    super.dispose();
  }

  final carousalres = CarousalModelSport.fetchAll();
  final carousalres3 = TurkSliderModel.fetchAll();
  final carousalres2 = CarousalModelSport2.fetchAll();
  final weeeklistrep = WeekListModel.fetchAll();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 20,
            ),
            AllMatchScoreBoard(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "أهم أخبار الرياضة",
                  style: or,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "images/24h.PNG",
                  width: 30,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Sport_m_Article(),
            SizedBox(
              height: 10,
            ),
            SVedioList(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "العناوين",
                  style: headingblue_text,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SSingleTextArticle(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "هم أخبار الرياضة",
                  style: or,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("images/24h.PNG", width: 30, fit: BoxFit.fill),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TopSportNewsVedio(),
            Divider(
              height: 0.5,
              color: app_menu_textcolor,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "هم أخبار الرياضة",
              style: or,
            ),
            SNewslist(),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "images/bgslider.PNG",
                      )),
                  color: app_Bluecolor),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "قبل أن تذهب",
                        style: slider_headertext,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "images/24red.png",
                        width: 24,
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider.builder(
                      itemCount: carousalres.length,
                      itemBuilder: Carousal_item,
                      options: CarouselOptions(
                        //pageSnapping: true,
                        clipBehavior: Clip.hardEdge,
                        viewportFraction: 0.86,
                        //aspectRatio: 2.0,
                        initialPage: 0,
                        height: MediaQuery.of(context).size.height * 0.34,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 0.5,
              color: app_menu_textcolor,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "عرض الكل",
                  style: txtfield_menu,
                ),
                const Spacer(),
                Text(
                  " نتائج المباريات",
                  style: hottest_text,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            FootballMatchList(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("آخر الأخبار الرياضية", style: hottest_text),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "images/24h.PNG",
                  width: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            LatestSportsVedio(),
            const SizedBox(
              height: 20,
            ),
            Divider(
              height: 0.5,
              color: app_menu_textcolor,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "images/bgslider.PNG",
                      )),
                  color: app_Bluecolor),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "لا تفوت هذه",
                        style: slider_headertext,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "images/24red.png",
                        width: 24,
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                  TabBar(
                    isScrollable: true,
                    controller: _tabController5,
                    unselectedLabelColor: tab_unselectedcolor,
                    labelColor: app_Whitecolor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2, color: app_Whitecolor),
                      //hight of indicator
                      insets: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                      //give some padding to reduce the size of indicator
                    ),
                    tabs: [
                      for (final tab in Akhbar.missthis.reversed)
                        Tab(
                          iconMargin: EdgeInsets.only(bottom: 10),
                          text: tab,
                        )
                    ],
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    unselectedLabelStyle: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                    ),
                  ),
                  Divider(
                    height: 0.5,
                    color: app_menu_textcolor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider.builder(
                      itemCount: carousalres2.length,
                      itemBuilder: Carousal_item,
                      options: CarouselOptions(
                        //pageSnapping: true,
                        clipBehavior: Clip.hardEdge,
                        viewportFraction: 0.86,
                        //aspectRatio: 2.0,
                        initialPage: 0,
                        height: MediaQuery.of(context).size.height * 0.34,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 0.5,
              color: app_menu_textcolor,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "هم أخبار الرياضة",
                  style: or,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("images/24h.PNG", width: 30, fit: BoxFit.fill),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: app_Cont_Textcolor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: CarouselSlider.builder(
                    itemCount: carousalres3.length,
                    itemBuilder: Turk_slider,
                    options: CarouselOptions(
                      //pageSnapping: true,
                      clipBehavior: Clip.hardEdge,
                      viewportFraction: 0.76,
                      //aspectRatio: 2.0,
                      initialPage: 0,
                      height: MediaQuery.of(context).size.height * 0.25,
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "images/lastsportpic.PNG",
                      )),
                  color: app_Bluecolor),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: app_Whitecolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text("شارك", style: signup),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                                size: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      Text(
                        "قبل أن تذهب",
                        style: slider_headertext,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "images/24red.png",
                        width: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  LatestraceVedio()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Carousal_item(BuildContext context, int index, realIndex) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Stack(children: [
              Container(
                  alignment: Alignment.centerRight,
                  /*    width: 270,
                  height: 180,*/
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.9,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: app_Bluecolor,
                      image: DecorationImage(
                          image: AssetImage(
                              carousalres[index].image_slider.toString()),
                          fit: BoxFit.cover))),
              Positioned(
                  top: 140,
                  left: 10,
                  child: Row(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.60,
                        height: MediaQuery.of(context).size.height * 0.033,
                        decoration: BoxDecoration(
                            color: app_Whitecolor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "الاتحاد البرازيلي لكرة القدم يعين أول مديرة",
                          style: slider_text,
                          textAlign: TextAlign.right,
                          // overflow: TextOverflow.visible,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage(
                              "images/mediaplayer.png",
                            ),
                            color: app_redcolor,
                            size: 20,
                          )),
                    ],
                  ))
            ]),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
  Widget Carousal_text(BuildContext context, int index, realIndex) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: app_Whitecolor),
            ),
          ),
        ],
      );
  Widget Turk_slider(BuildContext context, int index, realIndex) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.29,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: app_Whitecolor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          carousalres3[index].name,
                          style: slider_nameStyle,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 17,
                          backgroundColor: app_redcolor,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: app_redcolor,
                            backgroundImage: AssetImage(
                                carousalres3[index].image_slider.toString()),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Text(
                        carousalres3[index].detail,
                        style: slider_detailText,
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
