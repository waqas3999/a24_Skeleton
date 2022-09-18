import 'package:a24_skeleton/screens/base_landing/model/carousal_model.dart';
import 'package:a24_skeleton/screens/base_landing/model/weeklist_model.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/article_list.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/editors_picks.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/footballmatch_list.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/home_main_t_article.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/news_listarticle.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/news_ticker.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/single_text_Article.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/vedio_list.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/week_list.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/week_tab.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController3;
  bool selected_text = false;
  int navigationId = 1;
  @override
  void initState() {
    _tabController3 = TabController(length: 2, vsync: this, initialIndex: 1);

    super.initState();
  }

  @override
  void dispose() {
    _tabController3.dispose();
    super.dispose();
  }

  final carousalres = CarousalModel.fetchAll();
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
            NewsTicker(),
            const SizedBox(
              height: 15,
            ),
            TotalNews_Article(),
            Newslist(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "أحدث الأخبار",
                  style: home_heading1,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "images/24h.PNG",
                  width: 30,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
                itemCount: carousalres.length,
                itemBuilder: Carousal_item,
                options: CarouselOptions(
                    pageSnapping: true,
                    clipBehavior: Clip.hardEdge,
                    viewportFraction: 0.9,
                    //aspectRatio: 2.0,
                    initialPage: 0,
                    height: MediaQuery.of(context).size.shortestSide)),
            ArticleList(),
            SingleTextAticle(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "أنشرة الرابعة",
                  style: home_heading1,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset("images/24h.PNG", width: 30, fit: BoxFit.fill),
              ],
            ),
            VedioList(),
            SizedBox(
              height: 10,
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
                  style: home_heading2,
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
                Text("اختيارات المحرر", style: home_heading1),
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
            EditorsPicks(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "عرض الكل",
                  style: txtfield_menu,
                ),
                const Spacer(),
                Text(
                  "الأكثر رواجا",
                  style: hottest_text,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.57,
              decoration: BoxDecoration(
                  color: container_home_color,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TabBar(
                    //padding: EdgeInsets.all(10),
                    controller: _tabController3,
                    unselectedLabelColor: tab_unselectedcolor,
                    labelColor: app_Blackcolor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2, color: app_redcolor),
                      //hight of indicator
                      insets: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                      //give some padding to reduce the size of indicator
                    ),
                    tabs: [
                      Tab(text: "مواضيع شائعة"),
                      Tab(
                        text: 'الأكثر قراءة',
                      ),
                    ],
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    unselectedLabelStyle:
                        TextStyle(fontStyle: FontStyle.normal, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  WeekTab(
                    onPress: (int) {
                      0;
                    },
                  ),
                  //  navigationId == 1 ? WeekList() : Container(),
                  WeekList(),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "End",
              style: goal_red_style,
            )
          ],
        ),
      ),
    );
  }

  Widget Carousal_item(BuildContext context, int index, realIndex) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.centerRight,
                width: 270,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: app_Bluecolor,
                    image: DecorationImage(
                        image: AssetImage(/*"images/s.jpg"*/ carousalres[index]
                            .image_slider
                            .toString()),
                        fit: BoxFit.fill))),
          ),
          SizedBox(
            height: 5,
          ),

          Text(
            carousalres[index].titie.toString() /*"اسم القسم"*/,
            style: red_text,
            textAlign: TextAlign.right,
          ),
          //SizedBox(height: 5,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              /*"السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟"*/ carousalres[
                      index]
                  .detail
                  .toString(),
              style: home_heading2,
              textAlign: TextAlign.right,
            ),
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
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.messenger,
                    size: 14,
                    color: app_menu_textcolor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "2,986",
                    style: message_text,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "images/glasses.png",
                    color: app_menu_textcolor,
                    width: 18,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "مون ساعات",
                    style: message_text,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    "images/clock.png",
                    color: app_menu_textcolor,
                    width: 8,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "images/24h.PNG",
                    width: 18,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 0.5,
                color: app_menu_textcolor,
                indent: 22,
              )
            ]),
          ),
        ],
      );
}
